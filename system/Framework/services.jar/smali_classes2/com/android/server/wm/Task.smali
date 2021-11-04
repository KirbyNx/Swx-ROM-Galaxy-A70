.class Lcom/android/server/wm/Task;
.super Lcom/android/server/wm/WindowContainer;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/Task$TaskActivitiesReport;,
        Lcom/android/server/wm/Task$FindRootHelper;,
        Lcom/android/server/wm/Task$ReparentMoveStackMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainer<",
        "Lcom/android/server/wm/WindowContainer;",
        ">;"
    }
.end annotation


# static fields
.field private static final ATTR_AFFINITY:Ljava/lang/String; = "affinity"

.field private static final ATTR_ASKEDCOMPATMODE:Ljava/lang/String; = "asked_compat_mode"

.field private static final ATTR_AUTOREMOVERECENTS:Ljava/lang/String; = "auto_remove_recents"

.field private static final ATTR_CALLING_FEATURE_ID:Ljava/lang/String; = "calling_feature_id"

.field private static final ATTR_CALLING_PACKAGE:Ljava/lang/String; = "calling_package"

.field private static final ATTR_CALLING_UID:Ljava/lang/String; = "calling_uid"

.field private static final ATTR_DEDICATED_TASK:Ljava/lang/String; = "dedicated_task"

.field private static final ATTR_EFFECTIVE_UID:Ljava/lang/String; = "effective_uid"

.field private static final ATTR_HOST_PROCESS_NAME:Ljava/lang/String; = "host_process_name"

.field private static final ATTR_LASTDESCRIPTION:Ljava/lang/String; = "last_description"

.field private static final ATTR_LASTTIMEMOVED:Ljava/lang/String; = "last_time_moved"

.field private static final ATTR_MIN_HEIGHT:Ljava/lang/String; = "min_height"

.field private static final ATTR_MIN_WIDTH:Ljava/lang/String; = "min_width"

.field private static final ATTR_NEVERRELINQUISH:Ljava/lang/String; = "never_relinquish_identity"

.field private static final ATTR_NEXT_AFFILIATION:Ljava/lang/String; = "next_affiliation"

.field private static final ATTR_NON_FULLSCREEN_BOUNDS:Ljava/lang/String; = "non_fullscreen_bounds"

.field private static final ATTR_ORIGACTIVITY:Ljava/lang/String; = "orig_activity"

.field private static final ATTR_PERSIST_TASK_VERSION:Ljava/lang/String; = "persist_task_version"

.field private static final ATTR_PREV_AFFILIATION:Ljava/lang/String; = "prev_affiliation"

.field private static final ATTR_REALACTIVITY:Ljava/lang/String; = "real_activity"

.field private static final ATTR_REALACTIVITY_SUSPENDED:Ljava/lang/String; = "real_activity_suspended"

.field private static final ATTR_RESIZE_MODE:Ljava/lang/String; = "resize_mode"

.field private static final ATTR_ROOTHASRESET:Ljava/lang/String; = "root_has_reset"

.field private static final ATTR_ROOT_AFFINITY:Ljava/lang/String; = "root_affinity"

.field private static final ATTR_SUPPORTS_PICTURE_IN_PICTURE:Ljava/lang/String; = "supports_picture_in_picture"

.field private static final ATTR_TASKID:Ljava/lang/String; = "task_id"

.field private static final ATTR_TASKTYPE:Ljava/lang/String; = "task_type"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ATTR_TASK_AFFILIATION:Ljava/lang/String; = "task_affiliation"

.field private static final ATTR_TASK_AFFILIATION_COLOR:Ljava/lang/String; = "task_affiliation_color"

.field private static final ATTR_USERID:Ljava/lang/String; = "user_id"

.field private static final ATTR_USER_SETUP_COMPLETE:Ljava/lang/String; = "user_setup_complete"

.field private static final ATTR_WINDOW_LAYOUT_AFFINITY:Ljava/lang/String; = "window_layout_affinity"

.field static final FLAG_FORCE_HIDDEN_FOR_PINNED_TASK:I = 0x1

.field static final FLAG_FORCE_HIDDEN_FOR_TASK_ORG:I = 0x2

.field static final INVALID_MAX_SIZE:I = -0x1

.field static final INVALID_MIN_SIZE:I = -0x1

.field static final LOCK_TASK_AUTH_DONT_LOCK:I = 0x0

.field static final LOCK_TASK_AUTH_LAUNCHABLE:I = 0x2

.field static final LOCK_TASK_AUTH_LAUNCHABLE_PRIV:I = 0x4

.field static final LOCK_TASK_AUTH_PINNABLE:I = 0x1

.field static final LOCK_TASK_AUTH_WHITELISTED:I = 0x3

.field static final PERSIST_TASK_VERSION:I = 0x1

.field static final REPARENT_KEEP_STACK_AT_FRONT:I = 0x1

.field static final REPARENT_LEAVE_STACK_IN_PLACE:I = 0x2

.field static final REPARENT_MOVE_STACK_TO_FRONT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final TAG_ADD_REMOVE:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_AFFINITYINTENT:Ljava/lang/String; = "affinity_intent"

.field private static final TAG_INTENT:Ljava/lang/String; = "intent"

.field private static final TAG_LOCKTASK:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_RECENTS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_TASKS:Ljava/lang/String; = "ActivityTaskManager"

.field private static sTmpException:Ljava/lang/Exception;


# instance fields
.field affinity:Ljava/lang/String;

.field affinityIntent:Landroid/content/Intent;

.field askedCompatMode:Z

.field autoRemoveRecents:Z

.field effectiveUid:I

.field inRecents:Z

.field intent:Landroid/content/Intent;

.field isAvailable:Z

.field isPersistable:Z

.field lastActiveTime:J

.field lastDescription:Ljava/lang/CharSequence;

.field lastGainFocusTime:J

.field mAffiliatedTaskColor:I

.field mAffiliatedTaskId:I

.field final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field mCallingFeatureId:Ljava/lang/String;

.field mCallingPackage:Ljava/lang/String;

.field mCallingUid:I

.field private mCanAffectSystemUiFlags:Z

.field mCanFitToShortSideLandscape:Z

.field mCanFitToShortSidePortrait:Z

.field mCanRotationToLandscape:Z

.field mCanRotationToPortrait:Z

.field mCanRotationToReversePortrait:Z

.field mChangePinnedToSplitScreen:Z

.field mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

.field mCreatedByOrganizer:Z

.field mDedicatedTask:Z

.field mDexCompatCustomSize:Landroid/graphics/Point;

.field mDexCompatUiMode:I

.field mDexLaunchPolicy:I

.field private mDexMetaDataInfo:Lcom/android/server/wm/DexController$DexMetaDataInfo;

.field private mDimmer:Lcom/android/server/wm/Dimmer;

.field mDisplayCompatAvailable:Z

.field mDisplayCompatPolicy:I

.field private mDragResizeMode:I

.field private mDragResizing:Z

.field final mExitingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mFindRootHelper:Lcom/android/server/wm/Task$FindRootHelper;

.field mFitToShortSideEnabled:Z

.field private mForceHiddenFlags:I

.field private mForceResumeWhilePause:Z

.field private mForceShowForAllUsers:Z

.field mForcedOrientation:I

.field mForcedOrientationReverseNeeded:Z

.field mFreeformDensityDisabled:Z

.field private mHasBeenVisible:Z

.field mHasTopFullscreenWindow:Z

.field mHostProcessName:Ljava/lang/String;

.field mInRemoveTask:Z

.field private mIsAliasManaged:Z

.field private mIsDexCompatAllowedFullscreen:Z

.field private mIsDexCompatEnabled:Z

.field mIsLaunchHomeActivity:Z

.field private mIsMinimized:Z

.field mIsNotchNever:Z

.field mIsNotchOverlap:Z

.field private mLastDensityDpi:F

.field mLastMetaKeyBounds:Landroid/graphics/Rect;

.field private mLastMinimizedDisplayType:I

.field private mLastMinimizedRotation:I

.field mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

.field mLastNonFullscreenBounds:Landroid/graphics/Rect;

.field mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

.field mLastReportedRequestedOrientation:I

.field private mLastRotationDisplayId:I

.field private final mLastSurfaceSize:Landroid/graphics/Point;

.field private mLastTaskOrganizerWindowingMode:I

.field mLastTimeMoved:J

.field mLaunchSplitMode:I

.field mLaunchSplitWindowingMode:I

.field mLayerRank:I

.field mLockTaskAuth:I

.field mLockTaskUid:I

.field mMainWindowSizeChangeTask:Lcom/android/server/wm/Task;

.field mMainWindowSizeChangeTransaction:Landroid/view/SurfaceControl$Transaction;

.field private final mMaxDimensions:Landroid/graphics/Point;

.field mMaxHeight:I

.field mMaxWidth:I

.field private final mMinDimensions:Landroid/graphics/Point;

.field mMinHeight:I

.field mMinWidth:I

.field mMinimizeAnimState:I

.field private mNeverRelinquishIdentity:Z

.field mNextAffiliate:Lcom/android/server/wm/Task;

.field mNextAffiliateTaskId:I

.field private mPairTask:Lcom/android/server/wm/PairTask;

.field mPausingActivity:Lcom/android/server/wm/ActivityRecord;

.field private mPendingDexHelpMode:I

.field private mPendingDexNonResizeableAppRestartHelpMode:I

.field mPopOverChildCnt:I

.field final mPreparedFrozenBounds:Landroid/graphics/Rect;

.field final mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

.field private mPreserveNonFloatingState:Z

.field mPrevAffiliate:Lcom/android/server/wm/Task;

.field mPrevAffiliateTaskId:I

.field mPrevDisplayId:I

.field mReadyToAutoDock:Z

.field mResizeMode:I

.field mResumedActivity:Lcom/android/server/wm/ActivityRecord;

.field final mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

.field private mReuseTask:Z

.field private mRootProcess:Lcom/android/server/wm/WindowProcessController;

.field final mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field private mRotation:I

.field private mShadowRadius:F

.field mSkipSavingLaunchingState:Z

.field mSnappingGuideBounds:Landroid/graphics/Rect;

.field final mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

.field mSupportScaledDensity:Z

.field mSupportsPictureInPicture:Z

.field mTakeInitBounds:Z

.field mTaskAppearedSent:Z

.field private mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

.field final mTaskId:I

.field mTaskOrganizer:Landroid/window/ITaskOrganizer;

.field mTaskSwitchingInSplitMode:Z

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private mTmpConfig:Landroid/content/res/Configuration;

.field private final mTmpDimBoundsRect:Landroid/graphics/Rect;

.field private final mTmpFullBounds:Landroid/graphics/Rect;

.field private final mTmpInsets:Landroid/graphics/Rect;

.field private final mTmpNonDecorBounds:Landroid/graphics/Rect;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTmpRect2:Landroid/graphics/Rect;

.field private final mTmpStableBounds:Landroid/graphics/Rect;

.field private final mToRemove:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mUserId:I

.field mUserSetupComplete:Z

.field mWindowLayoutAffinity:Ljava/lang/String;

.field maxRecents:I

.field private nowFirstAddChild:Z

.field origActivity:Landroid/content/ComponentName;

.field realActivity:Landroid/content/ComponentName;

.field realActivitySuspended:Z

.field rootAffinity:Ljava/lang/String;

.field rootWasReset:Z

.field stringName:Ljava/lang/String;

.field voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field voiceSession:Landroid/service/voice/IVoiceInteractionSession;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;JZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;Ljava/lang/String;IZZZIILandroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Lcom/android/server/wm/ActivityStack;)V
    .registers 52
    .param p1, "atmService"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "_taskId"    # I
    .param p3, "_intent"    # Landroid/content/Intent;
    .param p4, "_affinityIntent"    # Landroid/content/Intent;
    .param p5, "_affinity"    # Ljava/lang/String;
    .param p6, "_rootAffinity"    # Ljava/lang/String;
    .param p7, "_realActivity"    # Landroid/content/ComponentName;
    .param p8, "_origActivity"    # Landroid/content/ComponentName;
    .param p9, "_rootWasReset"    # Z
    .param p10, "_autoRemoveRecents"    # Z
    .param p11, "_askedCompatMode"    # Z
    .param p12, "_userId"    # I
    .param p13, "_effectiveUid"    # I
    .param p14, "_lastDescription"    # Ljava/lang/String;
    .param p15, "lastTimeMoved"    # J
    .param p17, "neverRelinquishIdentity"    # Z
    .param p18, "_lastTaskDescription"    # Landroid/app/ActivityManager$TaskDescription;
    .param p19, "taskAffiliation"    # I
    .param p20, "prevTaskId"    # I
    .param p21, "nextTaskId"    # I
    .param p22, "taskAffiliationColor"    # I
    .param p23, "callingUid"    # I
    .param p24, "callingPackage"    # Ljava/lang/String;
    .param p25, "callingFeatureId"    # Ljava/lang/String;
    .param p26, "resizeMode"    # I
    .param p27, "supportsPictureInPicture"    # Z
    .param p28, "_realActivitySuspended"    # Z
    .param p29, "userSetupComplete"    # Z
    .param p30, "minWidth"    # I
    .param p31, "minHeight"    # I
    .param p32, "info"    # Landroid/content/pm/ActivityInfo;
    .param p33, "_voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p34, "_voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p35, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 754
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p26

    move-object/from16 v5, p32

    iget-object v6, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v6}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 273
    const/4 v6, 0x0

    iput v6, v0, Lcom/android/server/wm/Task;->mShadowRadius:F

    .line 276
    const/4 v7, 0x0

    iput-boolean v7, v0, Lcom/android/server/wm/Task;->mIsMinimized:Z

    .line 280
    const/4 v8, -0x1

    iput v8, v0, Lcom/android/server/wm/Task;->mLastMinimizedDisplayType:I

    .line 281
    iput v8, v0, Lcom/android/server/wm/Task;->mLastMinimizedRotation:I

    .line 285
    iput v7, v0, Lcom/android/server/wm/Task;->mMinimizeAnimState:I

    .line 293
    iput v7, v0, Lcom/android/server/wm/Task;->mLaunchSplitWindowingMode:I

    .line 297
    iput-boolean v7, v0, Lcom/android/server/wm/Task;->mReadyToAutoDock:Z

    .line 309
    invoke-static {v7}, Lcom/samsung/android/multiwindow/MultiWindowManager;->convertToMultiSplitMode(I)I

    move-result v9

    iput v9, v0, Lcom/android/server/wm/Task;->mLaunchSplitMode:I

    .line 369
    const/4 v9, 0x1

    iput v9, v0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    .line 371
    iput v8, v0, Lcom/android/server/wm/Task;->mLockTaskUid:I

    .line 379
    iput-boolean v7, v0, Lcom/android/server/wm/Task;->isPersistable:Z

    .line 388
    iput-boolean v9, v0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    .line 392
    iput-boolean v7, v0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 399
    iput v8, v0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    .line 401
    iput v8, v0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    .line 408
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 409
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    .line 410
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    .line 411
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mTmpInsets:Landroid/graphics/Rect;

    .line 412
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    .line 417
    const/4 v10, 0x0

    iput-object v10, v0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 425
    iput v8, v0, Lcom/android/server/wm/Task;->mLayerRank:I

    .line 428
    new-instance v11, Landroid/content/res/Configuration;

    invoke-direct {v11}, Landroid/content/res/Configuration;-><init>()V

    iput-object v11, v0, Lcom/android/server/wm/Task;->mTmpConfig:Landroid/content/res/Configuration;

    .line 431
    new-instance v11, Lcom/android/server/wm/Task$TaskActivitiesReport;

    invoke-direct {v11}, Lcom/android/server/wm/Task$TaskActivitiesReport;-><init>()V

    iput-object v11, v0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    .line 435
    iput v7, v0, Lcom/android/server/wm/Task;->mDexLaunchPolicy:I

    .line 437
    iput-boolean v7, v0, Lcom/android/server/wm/Task;->mIsDexCompatEnabled:Z

    .line 438
    iput v7, v0, Lcom/android/server/wm/Task;->mDexCompatUiMode:I

    .line 443
    iput-boolean v7, v0, Lcom/android/server/wm/Task;->mIsDexCompatAllowedFullscreen:Z

    .line 449
    iput v7, v0, Lcom/android/server/wm/Task;->mDisplayCompatPolicy:I

    .line 488
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    iput-object v11, v0, Lcom/android/server/wm/Task;->mPreparedFrozenBounds:Landroid/graphics/Rect;

    .line 489
    new-instance v11, Landroid/content/res/Configuration;

    invoke-direct {v11}, Landroid/content/res/Configuration;-><init>()V

    iput-object v11, v0, Lcom/android/server/wm/Task;->mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

    .line 492
    iput v8, v0, Lcom/android/server/wm/Task;->mPrevDisplayId:I

    .line 495
    iput v8, v0, Lcom/android/server/wm/Task;->mLastRotationDisplayId:I

    .line 510
    iput v8, v0, Lcom/android/server/wm/Task;->mLastReportedRequestedOrientation:I

    .line 513
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    iput-object v11, v0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    .line 515
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    iput-object v11, v0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    .line 537
    iput-boolean v7, v0, Lcom/android/server/wm/Task;->mPreserveNonFloatingState:Z

    .line 539
    new-instance v11, Lcom/android/server/wm/Dimmer;

    invoke-direct {v11, v0}, Lcom/android/server/wm/Dimmer;-><init>(Lcom/android/server/wm/WindowContainer;)V

    iput-object v11, v0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    .line 540
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    iput-object v11, v0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    .line 541
    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    iput-object v11, v0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    .line 544
    iput-boolean v9, v0, Lcom/android/server/wm/Task;->mCanAffectSystemUiFlags:Z

    .line 549
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v0, Lcom/android/server/wm/Task;->mExitingActivities:Ljava/util/ArrayList;

    .line 555
    iput-object v10, v0, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 562
    iput-object v10, v0, Lcom/android/server/wm/Task;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 569
    iput-object v10, v0, Lcom/android/server/wm/Task;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    .line 572
    iput-object v10, v0, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 579
    iput v7, v0, Lcom/android/server/wm/Task;->mForceHiddenFlags:I

    .line 598
    iput v8, v0, Lcom/android/server/wm/Task;->mMaxWidth:I

    .line 599
    iput v8, v0, Lcom/android/server/wm/Task;->mMaxHeight:I

    .line 604
    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11, v8, v8}, Landroid/graphics/Point;-><init>(II)V

    iput-object v11, v0, Lcom/android/server/wm/Task;->mMinDimensions:Landroid/graphics/Point;

    .line 605
    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11, v8, v8}, Landroid/graphics/Point;-><init>(II)V

    iput-object v11, v0, Lcom/android/server/wm/Task;->mMaxDimensions:Landroid/graphics/Point;

    .line 607
    iput v6, v0, Lcom/android/server/wm/Task;->mLastDensityDpi:F

    .line 611
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, v0, Lcom/android/server/wm/Task;->mSnappingGuideBounds:Landroid/graphics/Rect;

    .line 626
    new-instance v6, Lcom/android/server/wm/Task$FindRootHelper;

    invoke-direct {v6, v0, v10}, Lcom/android/server/wm/Task$FindRootHelper;-><init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task$1;)V

    iput-object v6, v0, Lcom/android/server/wm/Task;->mFindRootHelper:Lcom/android/server/wm/Task$FindRootHelper;

    .line 668
    iput v8, v0, Lcom/android/server/wm/Task;->mLastTaskOrganizerWindowingMode:I

    .line 675
    iput-boolean v7, v0, Lcom/android/server/wm/Task;->mFreeformDensityDisabled:Z

    .line 676
    iput-boolean v9, v0, Lcom/android/server/wm/Task;->mSupportScaledDensity:Z

    .line 691
    iput-object v10, v0, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    .line 692
    iput-boolean v7, v0, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    .line 697
    iput-boolean v7, v0, Lcom/android/server/wm/Task;->mTakeInitBounds:Z

    .line 701
    iput v7, v0, Lcom/android/server/wm/Task;->mPendingDexHelpMode:I

    .line 705
    iput v7, v0, Lcom/android/server/wm/Task;->mPendingDexNonResizeableAppRestartHelpMode:I

    .line 710
    iput-boolean v9, v0, Lcom/android/server/wm/Task;->mHasTopFullscreenWindow:Z

    .line 714
    iput-object v10, v0, Lcom/android/server/wm/Task;->mLastMetaKeyBounds:Landroid/graphics/Rect;

    .line 1920
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcom/android/server/wm/Task;->mToRemove:Ljava/util/ArrayList;

    .line 6088
    iput v7, v0, Lcom/android/server/wm/Task;->mPopOverChildCnt:I

    .line 756
    if-eqz p35, :cond_108

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v8

    :cond_108
    invoke-static {v2, v8}, Lcom/android/server/wm/EventLogTags;->writeWmTaskCreated(II)V

    .line 757
    iput-object v1, v0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 758
    iget-object v6, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iput-object v6, v0, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 759
    iget-object v6, v0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iput-object v6, v0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 760
    iput v2, v0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 761
    move/from16 v6, p12

    iput v6, v0, Lcom/android/server/wm/Task;->mUserId:I

    .line 762
    iput v4, v0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 763
    move/from16 v7, p27

    iput-boolean v7, v0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    .line 770
    move-object/from16 v8, p18

    iput-object v8, v0, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 772
    const/4 v10, -0x2

    invoke-virtual {v0, v10}, Lcom/android/server/wm/Task;->setOrientation(I)V

    .line 773
    new-instance v10, Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-direct {v10, v0}, Lcom/android/server/wm/WindowContainer$RemoteToken;-><init>(Lcom/android/server/wm/WindowContainer;)V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 774
    move-object/from16 v10, p4

    iput-object v10, v0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    .line 775
    move-object/from16 v11, p5

    iput-object v11, v0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    .line 776
    move-object/from16 v12, p6

    iput-object v12, v0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    .line 777
    move-object/from16 v13, p33

    iput-object v13, v0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 778
    move-object/from16 v14, p34

    iput-object v14, v0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 779
    move-object/from16 v15, p7

    iput-object v15, v0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 780
    move/from16 v9, p28

    iput-boolean v9, v0, Lcom/android/server/wm/Task;->realActivitySuspended:Z

    .line 781
    move-object/from16 v1, p8

    iput-object v1, v0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    .line 782
    move/from16 v1, p9

    iput-boolean v1, v0, Lcom/android/server/wm/Task;->rootWasReset:Z

    .line 783
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/Task;->isAvailable:Z

    .line 784
    move/from16 v1, p10

    iput-boolean v1, v0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    .line 785
    move/from16 v1, p11

    iput-boolean v1, v0, Lcom/android/server/wm/Task;->askedCompatMode:Z

    .line 786
    move/from16 v1, p29

    iput-boolean v1, v0, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    .line 787
    move/from16 v1, p13

    iput v1, v0, Lcom/android/server/wm/Task;->effectiveUid:I

    .line 788
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->touchActiveTime()V

    .line 789
    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/server/wm/Task;->lastDescription:Ljava/lang/CharSequence;

    .line 790
    move-wide/from16 v6, p15

    iput-wide v6, v0, Lcom/android/server/wm/Task;->mLastTimeMoved:J

    .line 791
    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    .line 792
    move/from16 v1, p19

    iput v1, v0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    .line 793
    move/from16 v1, p22

    iput v1, v0, Lcom/android/server/wm/Task;->mAffiliatedTaskColor:I

    .line 794
    move/from16 v1, p20

    iput v1, v0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    .line 795
    move/from16 v1, p21

    iput v1, v0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    .line 796
    move/from16 v1, p23

    iput v1, v0, Lcom/android/server/wm/Task;->mCallingUid:I

    .line 797
    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    .line 798
    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    .line 799
    iput v4, v0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 800
    if-eqz v5, :cond_1a1

    .line 801
    invoke-direct {v0, v3, v5}, Lcom/android/server/wm/Task;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 802
    invoke-virtual {v0, v5}, Lcom/android/server/wm/Task;->setMinDimensions(Landroid/content/pm/ActivityInfo;)V

    move/from16 v1, p31

    goto :goto_1ab

    .line 804
    :cond_1a1
    iput-object v3, v0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 805
    move/from16 v1, p30

    iput v1, v0, Lcom/android/server/wm/Task;->mMinWidth:I

    .line 806
    move/from16 v1, p31

    iput v1, v0, Lcom/android/server/wm/Task;->mMinHeight:I

    .line 813
    :goto_1ab
    iget-object v1, v0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    iget-object v3, v0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskCreated(ILandroid/content/ComponentName;)V

    .line 814
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/app/ActivityManager$TaskDescription;Lcom/android/server/wm/ActivityStack;)V
    .registers 45
    .param p1, "atmService"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "_taskId"    # I
    .param p3, "info"    # Landroid/content/pm/ActivityInfo;
    .param p4, "_intent"    # Landroid/content/Intent;
    .param p5, "_voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p6, "_voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p7, "_taskDescription"    # Landroid/app/ActivityManager$TaskDescription;
    .param p8, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 728
    move-object/from16 v15, p3

    iget-object v0, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 731
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 732
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 734
    if-eqz p7, :cond_13

    move-object/from16 v32, p7

    goto :goto_1a

    :cond_13
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v0}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    move-object/from16 v32, v0

    :goto_1a
    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, 0x0

    iget-object v0, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v23, v0

    iget-object v0, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    iget v0, v15, Landroid/content/pm/ActivityInfo;->resizeMode:I

    move/from16 v26, v0

    .line 737
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v27

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, -0x1

    const/16 v31, -0x1

    .line 728
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    move-wide/from16 v15, v18

    move-object/from16 v18, v32

    move/from16 v19, p2

    move-object/from16 v32, p3

    move-object/from16 v33, p5

    move-object/from16 v34, p6

    move-object/from16 v35, p8

    invoke-direct/range {v0 .. v35}, Lcom/android/server/wm/Task;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;JZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;Ljava/lang/String;IZZZIILandroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Lcom/android/server/wm/ActivityStack;)V

    .line 740
    return-void
.end method

.method private adjustForMaximumTaskDimensions(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 10
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "previousBounds"    # Landroid/graphics/Rect;

    .line 6180
    if-eqz p1, :cond_6a

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_6a

    .line 6184
    :cond_f
    const/4 v0, 0x0

    .line 6185
    .local v0, "adjustWidth":Z
    const/4 v1, 0x0

    .line 6186
    .local v1, "adjustHeight":Z
    iget v2, p0, Lcom/android/server/wm/Task;->mMaxWidth:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eq v2, v5, :cond_22

    .line 6187
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-ge v2, v6, :cond_20

    move v2, v3

    goto :goto_21

    :cond_20
    move v2, v4

    :goto_21
    move v0, v2

    .line 6189
    :cond_22
    iget v2, p0, Lcom/android/server/wm/Task;->mMaxHeight:I

    if-eq v2, v5, :cond_2f

    .line 6190
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-ge v2, v5, :cond_2d

    goto :goto_2e

    :cond_2d
    move v3, v4

    :goto_2e
    move v1, v3

    .line 6192
    :cond_2f
    if-eqz v0, :cond_4c

    .line 6193
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_45

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-ne v2, v3, :cond_45

    .line 6194
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/android/server/wm/Task;->mMaxWidth:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_4c

    .line 6196
    :cond_45
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/server/wm/Task;->mMaxWidth:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 6199
    :cond_4c
    :goto_4c
    if-eqz v1, :cond_69

    .line 6200
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_62

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-ne v2, v3, :cond_62

    .line 6201
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/android/server/wm/Task;->mMaxHeight:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    goto :goto_69

    .line 6203
    :cond_62
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/android/server/wm/Task;->mMaxHeight:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 6206
    :cond_69
    :goto_69
    return-void

    .line 6181
    .end local v0    # "adjustWidth":Z
    .end local v1    # "adjustHeight":Z
    :cond_6a
    :goto_6a
    return-void
.end method

.method private autoRemoveFromRecents()Z
    .registers 2

    .line 1916
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getHasBeenVisible()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method private calculateInsetFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;)V
    .registers 12
    .param p1, "outNonDecorBounds"    # Landroid/graphics/Rect;
    .param p2, "outStableBounds"    # Landroid/graphics/Rect;
    .param p3, "bounds"    # Landroid/graphics/Rect;
    .param p4, "displayInfo"    # Landroid/view/DisplayInfo;

    .line 2887
    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2888
    invoke-virtual {p2, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2889
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_56

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-nez v0, :cond_17

    goto :goto_56

    .line 2892
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    .line 2893
    .local v0, "policy":Lcom/android/server/wm/DisplayPolicy;
    if-nez v0, :cond_28

    .line 2894
    return-void

    .line 2896
    :cond_28
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    iget v2, p4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, p4, Landroid/view/DisplayInfo;->logicalHeight:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2898
    iget v2, p4, Landroid/view/DisplayInfo;->rotation:I

    iget v3, p4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v4, p4, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v5, p4, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iget-object v6, p0, Lcom/android/server/wm/Task;->mTmpInsets:Landroid/graphics/Rect;

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 2900
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpInsets:Landroid/graphics/Rect;

    invoke-static {p1, v1, v2}, Lcom/android/server/wm/Task;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2902
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpInsets:Landroid/graphics/Rect;

    iget v2, p4, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayPolicy;->convertNonDecorInsetsToStableInsets(Landroid/graphics/Rect;I)V

    .line 2903
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpInsets:Landroid/graphics/Rect;

    invoke-static {p2, v1, v2}, Lcom/android/server/wm/Task;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2904
    return-void

    .line 2890
    .end local v0    # "policy":Lcom/android/server/wm/DisplayPolicy;
    :cond_56
    :goto_56
    return-void
.end method

.method private canResizeToBounds(Landroid/graphics/Rect;)Z
    .registers 8
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 2103
    const/4 v0, 0x1

    if-eqz p1, :cond_4a

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_4a

    .line 2107
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v3, 0x0

    if-le v1, v2, :cond_17

    move v1, v0

    goto :goto_18

    :cond_17
    move v1, v3

    .line 2108
    .local v1, "landscape":Z
    :goto_18
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 2109
    .local v2, "configBounds":Landroid/graphics/Rect;
    iget v4, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_3b

    .line 2110
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_39

    .line 2111
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v4, v5, :cond_33

    move v4, v0

    goto :goto_34

    :cond_33
    move v4, v3

    :goto_34
    if-ne v1, v4, :cond_37

    goto :goto_39

    :cond_37
    move v0, v3

    goto :goto_3a

    :cond_39
    :goto_39
    nop

    .line 2110
    :goto_3a
    return v0

    .line 2113
    :cond_3b
    const/4 v5, 0x6

    if-ne v4, v5, :cond_40

    if-nez v1, :cond_48

    :cond_40
    iget v4, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_49

    if-eqz v1, :cond_48

    goto :goto_49

    :cond_48
    move v0, v3

    :cond_49
    :goto_49
    return v0

    .line 2105
    .end local v1    # "landscape":Z
    .end local v2    # "configBounds":Landroid/graphics/Rect;
    :cond_4a
    :goto_4a
    return v0
.end method

.method private canSpecifyOrientation()Z
    .registers 5

    .line 4500
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    .line 4501
    .local v0, "windowingMode":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v1

    .line 4502
    .local v1, "activityType":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_16

    const/4 v3, 0x2

    if-eq v1, v3, :cond_16

    const/4 v3, 0x3

    if-eq v1, v3, :cond_16

    const/4 v3, 0x4

    if-ne v1, v3, :cond_15

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :cond_16
    :goto_16
    return v2
.end method

.method private cleanUpResourcesForDestroy(Lcom/android/server/wm/ConfigurationContainer;)V
    .registers 6
    .param p1, "oldParent"    # Lcom/android/server/wm/ConfigurationContainer;

    .line 834
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 835
    return-void

    .line 838
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 840
    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->saveLaunchingStateIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    .line 844
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    .line 845
    .local v0, "isVoiceSession":Z
    :goto_1e
    if-eqz v0, :cond_2b

    .line 847
    :try_start_20
    iget-object v1, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v2, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v1, v2, v3}, Landroid/service/voice/IVoiceInteractionSession;->taskFinished(Landroid/content/Intent;I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_29} :catch_2a

    .line 849
    goto :goto_2b

    .line 848
    :catch_2a
    move-exception v1

    .line 851
    :cond_2b
    :goto_2b
    invoke-direct {p0}, Lcom/android/server/wm/Task;->autoRemoveFromRecents()Z

    move-result v1

    if-eqz v1, :cond_3f

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_DEDICATED_MEMORY:Z

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 853
    invoke-virtual {v1, p0}, Lcom/android/server/wm/RecentTasks;->okToRemove(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-nez v1, :cond_41

    :cond_3f
    if-eqz v0, :cond_48

    .line 858
    :cond_41
    iget-object v1, p0, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/Task;)V

    .line 861
    :cond_48
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->removeIfPossible()V

    .line 862
    return-void
.end method

.method private closeRecentsChain()V
    .registers 3

    .line 1605
    iget-object v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_9

    .line 1606
    iget-object v1, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    .line 1608
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_12

    .line 1609
    iget-object v1, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    .line 1611
    :cond_12
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    .line 1612
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    .line 1613
    return-void
.end method

.method private computeMaxUserPosition(I)I
    .registers 4
    .param p1, "maxPosition"    # I

    .line 3623
    :goto_0
    if-lez p1, :cond_15

    .line 3624
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    .line 3625
    .local v0, "child":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->showToCurrentUser()Z

    move-result v1

    .line 3626
    .local v1, "canShow":Z
    if-nez v1, :cond_11

    .line 3627
    goto :goto_15

    .line 3629
    :cond_11
    nop

    .end local v0    # "child":Lcom/android/server/wm/WindowContainer;
    .end local v1    # "canShow":Z
    add-int/lit8 p1, p1, -0x1

    .line 3630
    goto :goto_0

    .line 3631
    :cond_15
    :goto_15
    return p1
.end method

.method private computeMinUserPosition(II)I
    .registers 5
    .param p1, "minPosition"    # I
    .param p2, "size"    # I

    .line 3605
    :goto_0
    if-ge p1, p2, :cond_15

    .line 3606
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    .line 3607
    .local v0, "child":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->showToCurrentUser()Z

    move-result v1

    .line 3608
    .local v1, "canShow":Z
    if-eqz v1, :cond_11

    .line 3609
    goto :goto_15

    .line 3611
    :cond_11
    nop

    .end local v0    # "child":Lcom/android/server/wm/WindowContainer;
    .end local v1    # "canShow":Z
    add-int/lit8 p1, p1, 0x1

    .line 3612
    goto :goto_0

    .line 3613
    :cond_15
    :goto_15
    return p1
.end method

.method static computeScreenLayoutOverride(III)I
    .registers 6
    .param p0, "sourceScreenLayout"    # I
    .param p1, "screenWidthDp"    # I
    .param p2, "screenHeightDp"    # I

    .line 3166
    and-int/lit8 p0, p0, 0x3f

    .line 3168
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3169
    .local v0, "longSize":I
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3170
    .local v1, "shortSize":I
    invoke-static {p0, v0, v1}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v2

    return v2
.end method

.method private static finishActivityAbove(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 5
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "boundaryActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 2007
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 2009
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_17

    .line 2010
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->takeOptionsLocked(Z)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 2011
    .local v0, "opts":Landroid/app/ActivityOptions;
    if-eqz v0, :cond_12

    .line 2013
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 2015
    :cond_12
    const-string v2, "clear-task-stack"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 2018
    .end local v0    # "opts":Landroid/app/ActivityOptions;
    :cond_17
    return v1
.end method

.method private static fitWithinBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .registers 10
    .param p0, "bounds"    # Landroid/graphics/Rect;
    .param p1, "stackBounds"    # Landroid/graphics/Rect;
    .param p2, "overlapPxX"    # I
    .param p3, "overlapPxY"    # I

    .line 2819
    if-eqz p1, :cond_61

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_61

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_61

    .line 2825
    :cond_f
    const/4 v0, 0x0

    .line 2827
    .local v0, "horizontalDiff":I
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2828
    .local v1, "overlapLR":I
    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    if-ge v2, v3, :cond_27

    .line 2829
    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    sub-int v0, v1, v2

    goto :goto_36

    .line 2830
    :cond_27
    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v1

    if-le v2, v3, :cond_36

    .line 2831
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    sub-int v2, v1, v2

    neg-int v0, v2

    .line 2833
    :cond_36
    :goto_36
    const/4 v2, 0x0

    .line 2834
    .local v2, "verticalDiff":I
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2835
    .local v3, "overlapTB":I
    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v3

    if-ge v4, v5, :cond_4e

    .line 2836
    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    goto :goto_5d

    .line 2837
    :cond_4e
    iget v4, p0, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v3

    if-le v4, v5, :cond_5d

    .line 2838
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v4, v3, v4

    neg-int v2, v4

    .line 2840
    :cond_5d
    :goto_5d
    invoke-virtual {p0, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 2841
    return-void

    .line 2820
    .end local v0    # "horizontalDiff":I
    .end local v1    # "overlapLR":I
    .end local v2    # "verticalDiff":I
    .end local v3    # "overlapTB":I
    :cond_61
    :goto_61
    return-void
.end method

.method private getAdjustedChildPosition(Lcom/android/server/wm/WindowContainer;I)I
    .registers 10
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "suggestedPosition"    # I

    .line 3635
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->showToCurrentUser()Z

    move-result v0

    .line 3637
    .local v0, "canShowChild":Z
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 3640
    .local v1, "size":I
    const/4 v2, 0x0

    if-eqz v0, :cond_12

    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/Task;->computeMinUserPosition(II)I

    move-result v3

    goto :goto_13

    :cond_12
    move v3, v2

    .line 3641
    .local v3, "minPosition":I
    :goto_13
    if-eqz v0, :cond_17

    move v4, v1

    goto :goto_1d

    :cond_17
    add-int/lit8 v4, v1, -0x1

    invoke-direct {p0, v4}, Lcom/android/server/wm/Task;->computeMaxUserPosition(I)I

    move-result v4

    .line 3644
    .local v4, "maxPosition":I
    :goto_1d
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_POP_OVER:Z

    if-eqz v5, :cond_31

    .line 3646
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    .line 3645
    invoke-static {v5, v6}, Lcom/android/server/wm/FreeformController;->useAlwaysOnTopFreeform(ILcom/android/server/wm/DisplayContent;)Z

    move-result v5

    if-eqz v5, :cond_31

    const/4 v2, 0x1

    goto :goto_32

    :cond_31
    nop

    .line 3650
    .local v2, "willBeAlwaysOnTop":Z
    :goto_32
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isAlwaysOnTop()Z

    move-result v5

    if-nez v5, :cond_54

    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_POP_OVER:Z

    if-eqz v5, :cond_3e

    if-nez v2, :cond_54

    .line 3656
    :cond_3e
    :goto_3e
    if-le v4, v3, :cond_54

    .line 3657
    iget-object v5, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    add-int/lit8 v6, v4, -0x1

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isAlwaysOnTop()Z

    move-result v5

    if-nez v5, :cond_51

    goto :goto_54

    .line 3658
    :cond_51
    add-int/lit8 v4, v4, -0x1

    goto :goto_3e

    .line 3663
    :cond_54
    :goto_54
    const/high16 v5, -0x80000000

    if-ne p2, v5, :cond_5b

    if-nez v3, :cond_5b

    .line 3664
    return v5

    .line 3665
    :cond_5b
    const v5, 0x7fffffff

    if-ne p2, v5, :cond_65

    add-int/lit8 v6, v1, -0x1

    if-lt v4, v6, :cond_65

    .line 3666
    return v5

    .line 3669
    :cond_65
    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    return v5
.end method

.method private static getMaxVisibleBounds(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;[Z)V
    .registers 6
    .param p0, "token"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "out"    # Landroid/graphics/Rect;
    .param p2, "foundTop"    # [Z

    .line 3917
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mIsExiting:Z

    if-nez v0, :cond_26

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isClientVisible()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v0, :cond_f

    goto :goto_26

    .line 3920
    :cond_f
    nop

    .line 3921
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMaxVisibleAppWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3923
    .local v0, "win":Lcom/android/server/wm/WindowState;
    if-nez v0, :cond_17

    .line 3924
    return-void

    .line 3926
    :cond_17
    const/4 v1, 0x0

    aget-boolean v2, p2, v1

    if-nez v2, :cond_22

    .line 3927
    const/4 v2, 0x1

    aput-boolean v2, p2, v1

    .line 3928
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 3931
    :cond_22
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowState;->getMaxVisibleBounds(Landroid/graphics/Rect;)V

    .line 3932
    return-void

    .line 3918
    .end local v0    # "win":Lcom/android/server/wm/WindowState;
    :cond_26
    :goto_26
    return-void
.end method

.method private getNextFocusableTask(Z)Lcom/android/server/wm/Task;
    .registers 5
    .param p1, "allowFocusSelf"    # Z

    .line 3498
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 3499
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-nez v0, :cond_8

    .line 3500
    const/4 v1, 0x0

    return-object v1

    .line 3503
    :cond_8
    new-instance v1, Lcom/android/server/wm/-$$Lambda$Task$vj7M5oQqOh0jXB9vjivQ2T6BJuU;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/-$$Lambda$Task$vj7M5oQqOh0jXB9vjivQ2T6BJuU;-><init>(Lcom/android/server/wm/Task;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 3511
    .local v1, "focusableTask":Lcom/android/server/wm/Task;
    if-nez v1, :cond_22

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 3512
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-direct {v2, p1}, Lcom/android/server/wm/Task;->getNextFocusableTask(Z)Lcom/android/server/wm/Task;

    move-result-object v2

    return-object v2

    .line 3514
    :cond_22
    return-object v1
.end method

.method private getNumRunningActivities(Lcom/android/server/wm/Task$TaskActivitiesReport;)V
    .registers 2
    .param p1, "reportOut"    # Lcom/android/server/wm/Task$TaskActivitiesReport;

    .line 1720
    invoke-virtual {p1}, Lcom/android/server/wm/Task$TaskActivitiesReport;->reset()V

    .line 1721
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 1722
    return-void
.end method

.method private getShadowRadius(Z)F
    .registers 5
    .param p1, "taskIsFocused"    # Z

    .line 5944
    const/4 v0, 0x0

    .line 5947
    .local v0, "elevation":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    .line 5948
    const/4 v0, 0x5

    goto :goto_13

    .line 5949
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 5950
    nop

    .line 5951
    const/4 v1, 0x3

    move v0, v1

    .line 5958
    :goto_13
    invoke-direct {p0}, Lcom/android/server/wm/Task;->hasVisibleChildren()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 5959
    return v2

    .line 5962
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v1

    int-to-float v1, v1

    return v1

    .line 5954
    :cond_28
    return v2
.end method

.method private hasPopOverChild()Z
    .registers 2

    .line 6091
    iget v0, p0, Lcom/android/server/wm/Task;->mPopOverChildCnt:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private hasVisibleChildren()Z
    .registers 3

    .line 5933
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_18

    .line 5937
    :cond_e
    sget-object v0, Lcom/android/server/wm/-$$Lambda$l6AtA6HpQmFuEYd_DP955eyY_WI;->INSTANCE:Lcom/android/server/wm/-$$Lambda$l6AtA6HpQmFuEYd_DP955eyY_WI;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_17

    const/4 v1, 0x1

    :cond_17
    return v1

    .line 5934
    :cond_18
    :goto_18
    return v1
.end method

.method private initMinMaxDimensions(Landroid/content/pm/ActivityInfo;)V
    .registers 10
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .line 6150
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v0, :cond_14

    .line 6151
    iget-object v0, p0, Lcom/android/server/wm/Task;->mMinDimensions:Landroid/graphics/Point;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v1, v1, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 6152
    iget-object v0, p0, Lcom/android/server/wm/Task;->mMinDimensions:Landroid/graphics/Point;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v1, v1, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 6154
    :cond_14
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_52

    .line 6155
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->getInitialDisplayDensity(I)I

    move-result v0

    int-to-float v0, v0

    .line 6157
    .local v0, "deviceDensityDpi":F
    const v1, 0x3bcccccd    # 0.00625f

    mul-float/2addr v1, v0

    .line 6158
    .local v1, "deviceDensity":F
    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.samsung.android.sdk.multiwindow.maxWidth"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 6160
    .local v2, "maxWidthDp":I
    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.samsung.android.sdk.multiwindow.maxHeight"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 6162
    .local v3, "maxHeightDp":I
    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-lez v5, :cond_52

    .line 6163
    const/high16 v5, 0x3f000000    # 0.5f

    if-eq v2, v4, :cond_48

    .line 6164
    iget-object v6, p0, Lcom/android/server/wm/Task;->mMaxDimensions:Landroid/graphics/Point;

    int-to-float v7, v2

    mul-float/2addr v7, v1

    add-float/2addr v7, v5

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Point;->x:I

    .line 6166
    :cond_48
    if-eq v3, v4, :cond_52

    .line 6167
    iget-object v4, p0, Lcom/android/server/wm/Task;->mMaxDimensions:Landroid/graphics/Point;

    int-to-float v6, v3

    mul-float/2addr v6, v1

    add-float/2addr v6, v5

    float-to-int v5, v6

    iput v5, v4, Landroid/graphics/Point;->y:I

    .line 6171
    .end local v0    # "deviceDensityDpi":F
    .end local v1    # "deviceDensity":F
    .end local v2    # "maxWidthDp":I
    .end local v3    # "maxHeightDp":I
    :cond_52
    return-void
.end method

.method private initializeChangeTransition(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "startBounds"    # Landroid/graphics/Rect;

    .line 2545
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/Task;->initializeChangeTransition(Landroid/graphics/Rect;I)V

    .line 2546
    return-void
.end method

.method private initializeChangeTransition(Landroid/graphics/Rect;I)V
    .registers 12
    .param p1, "startBounds"    # Landroid/graphics/Rect;
    .param p2, "transitChangeMode"    # I

    .line 2549
    const/4 v0, 0x0

    .line 2550
    .local v0, "endBounds":Landroid/graphics/Rect;
    const/4 v7, 0x0

    .line 2554
    .local v7, "targetLayer":Landroid/view/SurfaceControl;
    const/4 v8, 0x1

    const/4 v1, 0x2

    if-ne p2, v1, :cond_d

    .line 2555
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v0, v1

    goto :goto_f

    .line 2564
    :cond_d
    iput-boolean v8, p0, Lcom/android/server/wm/Task;->mNeedsZBoost:Z

    .line 2568
    :goto_f
    iget-object v1, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v2, 0x1b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3, v3}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZIZ)V

    .line 2570
    iget-object v1, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2573
    iget-object v1, p0, Lcom/android/server/wm/Task;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move-object v5, v0

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/SurfaceFreezer;->freeze(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;ILandroid/graphics/Rect;Landroid/view/SurfaceControl;)V

    .line 2585
    iget-object v1, p0, Lcom/android/server/wm/Task;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    iget-object v1, v1, Lcom/android/server/wm/SurfaceFreezer;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    if-eqz v1, :cond_36

    .line 2586
    sget-object v1, Lcom/android/server/wm/-$$Lambda$Task$RW57rcWH4t0t3qzoRnmKVpGUddQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$RW57rcWH4t0t3qzoRnmKVpGUddQ;

    invoke-virtual {p0, v1, v8}, Lcom/android/server/wm/Task;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 2593
    :cond_36
    return-void
.end method

.method static intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 5
    .param p0, "inOutBounds"    # Landroid/graphics/Rect;
    .param p1, "intersectBounds"    # Landroid/graphics/Rect;
    .param p2, "intersectInsets"    # Landroid/graphics/Rect;

    .line 2857
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_13

    .line 2858
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->right:I

    .line 2859
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 2861
    :cond_13
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_26

    .line 2862
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 2863
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 2865
    :cond_26
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-lt v0, v1, :cond_39

    .line 2866
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->left:I

    .line 2867
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 2869
    :cond_39
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-lt v0, v1, :cond_4c

    .line 2870
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 2871
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 2873
    :cond_4c
    return-void
.end method

.method private static invalidateAppBoundsConfig(Landroid/content/res/Configuration;)V
    .registers 3
    .param p0, "inOutConfig"    # Landroid/content/res/Configuration;

    .line 2912
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2913
    .local v0, "appBounds":Landroid/graphics/Rect;
    if-eqz v0, :cond_b

    .line 2914
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2916
    :cond_b
    const/4 v1, 0x0

    iput v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 2917
    iput v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 2918
    return-void
.end method

.method private isBlocklistResizeMode(I)Z
    .registers 3
    .param p1, "resizeMode"    # I

    .line 6503
    const/high16 v0, 0x100000

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private isChangeTransitionBlockedByCommonPolicy()Z
    .registers 5

    .line 6541
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisableTransitionAnimation:Z

    const/4 v1, 0x1

    if-nez v0, :cond_7b

    iget-object v0, p0, Lcom/android/server/wm/Task;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 6542
    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_7b

    iget-object v0, p0, Lcom/android/server/wm/Task;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    .line 6543
    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceFreezer;->hasLeash()Z

    move-result v0

    if-nez v0, :cond_7b

    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v0, :cond_7b

    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 6546
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getRotationAnimation()Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 6547
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getRotationAnimation()Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->hasScreenshot()Z

    move-result v0

    if-nez v0, :cond_7b

    .line 6548
    :cond_35
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_7b

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeRecents()Z

    move-result v0

    if-nez v0, :cond_7b

    .line 6549
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_7b

    .line 6550
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 6551
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 6552
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-nez v0, :cond_5a

    goto :goto_7b

    .line 6555
    :cond_5a
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 6556
    .local v0, "appTransition":Lcom/android/server/wm/AppTransition;
    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v2

    .line 6557
    .local v2, "transit":I
    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v3

    if-eqz v3, :cond_79

    const/16 v3, 0xb

    if-eq v2, v3, :cond_79

    const/16 v3, 0x9

    if-eq v2, v3, :cond_79

    const/16 v3, 0x1b

    if-eq v2, v3, :cond_79

    if-eqz v2, :cond_79

    .line 6562
    return v1

    .line 6564
    :cond_79
    const/4 v1, 0x0

    return v1

    .line 6553
    .end local v0    # "appTransition":Lcom/android/server/wm/AppTransition;
    .end local v2    # "transit":I
    :cond_7b
    :goto_7b
    return v1
.end method

.method private isClosingSplitApp(I)Z
    .registers 7
    .param p1, "prevWinMode"    # I

    .line 6694
    invoke-static {p1}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 6695
    return v1

    .line 6696
    :cond_8
    const/4 v0, 0x3

    if-ne p1, v0, :cond_d

    .line 6697
    const/4 v0, 0x4

    goto :goto_e

    :cond_d
    nop

    .line 6698
    .local v0, "otherWindowingMode":I
    :goto_e
    iget-object v2, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    .line 6701
    .local v2, "defaultTaskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v2, v0}, Lcom/android/server/wm/TaskDisplayArea;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 6702
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v3, :cond_23

    iget-object v4, v3, Lcom/android/server/wm/ActivityStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_23

    const/4 v1, 0x1

    :cond_23
    return v1
.end method

.method private isFocused()Z
    .registers 3

    .line 5923
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_c

    goto :goto_18

    .line 5926
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne v0, p0, :cond_17

    const/4 v1, 0x1

    :cond_17
    return v1

    .line 5924
    :cond_18
    :goto_18
    return v1
.end method

.method private isInSkipClosingAppSnapshotTasks(Lcom/android/server/wm/Task;)Z
    .registers 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 2521
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotController;->isInSkipClosingAppSnapshotTasks(Lcom/android/server/wm/Task;)Z

    move-result v0

    return v0
.end method

.method private static isOpaqueActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 5
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;

    .line 4192
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 4195
    return v1

    .line 4198
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-nez v0, :cond_d

    if-eq p0, p1, :cond_d

    .line 4201
    return v1

    .line 4204
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_25

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->hasWallpaper:Z

    if-eqz v0, :cond_19

    goto :goto_25

    .line 4211
    :cond_19
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_BLUR_WALLPAPER_BACKGROUND:Z

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isBlurWallpaperBackgroundTarget()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 4212
    return v2

    .line 4215
    :cond_24
    return v1

    .line 4207
    :cond_25
    :goto_25
    return v2
.end method

.method private isTopActivityLaunchedBehind()Z
    .registers 3

    .line 5097
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 5098
    .local v0, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_c

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v1, :cond_c

    .line 5099
    const/4 v1, 0x1

    return v1

    .line 5101
    :cond_c
    const/4 v1, 0x0

    return v1
.end method

.method private static isTopRunning(Lcom/android/server/wm/ActivityRecord;ILandroid/os/IBinder;)Z
    .registers 4
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "taskId"    # I
    .param p2, "notTop"    # Landroid/os/IBinder;

    .line 4419
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    if-eq v0, p1, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    if-eq v0, p2, :cond_14

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method private static isTopRunningNonDelayed(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "notTop"    # Lcom/android/server/wm/ActivityRecord;

    .line 4398
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    if-nez v0, :cond_e

    if-eq p0, p1, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static synthetic lambda$BP51Xfr33NBfsJ4rKO04RomX2Tg(Lcom/android/server/wm/ActivityRecord;Landroid/content/ComponentName;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->matchesActivityInHistory(Lcom/android/server/wm/ActivityRecord;Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$CKQ9RLMNPYajktwO1VrUoQGHF_8(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->isOpaqueActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$OQmaRDKXdgA0v6VfNwTX7wOkwBs(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lorg/xmlpull/v1/XmlSerializer;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Task;->saveActivityToXml(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lorg/xmlpull/v1/XmlSerializer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$SAhnD6goWlY1lXYn6fWba8f2JLs(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;[Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Task;->getMaxVisibleBounds(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;[Z)V

    return-void
.end method

.method public static synthetic lambda$TUGPkEKamN60PF6hJQxUwDBjU-M(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityManager$TaskDescription;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Task;->setTaskDescriptionFromActivityAboveRoot(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityManager$TaskDescription;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$applyAnimationUnchecked$14(Ljava/util/ArrayList;ILcom/android/server/wm/AnimationAdapter;)V
    .registers 5
    .param p0, "sources"    # Ljava/util/ArrayList;
    .param p1, "type"    # I
    .param p2, "anim"    # Lcom/android/server/wm/AnimationAdapter;

    .line 4671
    if-nez p0, :cond_3

    .line 4672
    return-void

    .line 4675
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 4676
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowContainer;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 4675
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 4678
    .end local v0    # "i":I
    :cond_16
    return-void
.end method

.method static synthetic lambda$getDescendantTaskCount$8(Lcom/android/server/wm/Task;[I)V
    .registers 4
    .param p0, "t"    # Lcom/android/server/wm/Task;
    .param p1, "count"    # [I

    .line 3480
    const/4 v0, 0x0

    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    return-void
.end method

.method static synthetic lambda$getTopFullscreenActivity$12(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 4424
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 4425
    .local v0, "win":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_10

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method static synthetic lambda$getTopVisibleActivity$13(ZZLcom/android/server/wm/ActivityRecord;)Z
    .registers 4
    .param p0, "includeHidingApp"    # Z
    .param p1, "excludePopOver"    # Z
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 4438
    iget-boolean v0, p2, Lcom/android/server/wm/ActivityRecord;->mIsExiting:Z

    if-nez v0, :cond_22

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isClientVisible()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-boolean v0, p2, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v0, :cond_16

    if-eqz p0, :cond_22

    .line 4440
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_16
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_POP_OVER:Z

    if-eqz v0, :cond_20

    if-eqz p1, :cond_20

    iget-boolean v0, p2, Lcom/android/server/wm/ActivityRecord;->mIsPopOver:Z

    if-nez v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    .line 4438
    :goto_23
    return v0
.end method

.method static synthetic lambda$hasVisiblePopOverChild$15(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 6096
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mIsPopOver:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method static synthetic lambda$initializeChangeTransition$5(Lcom/android/server/wm/WindowState;)V
    .registers 2
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 2587
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result v0

    if-nez v0, :cond_f

    .line 2588
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRedrawForChangeTransition:Z

    .line 2590
    :cond_f
    return-void
.end method

.method public static synthetic lambda$lqGdYR9ABiPuG3_68w1VS6hrr8c(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->finishActivityAbove(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$onAnimationFinished$7(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2620
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2621
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    sget-object v1, Lcom/android/server/wm/-$$Lambda$01bPtngJg5AqEoOWfW3rWfV7MH4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$01bPtngJg5AqEoOWfW3rWfV7MH4;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 2622
    return-void
.end method

.method static synthetic lambda$onAnimationLeashLost$6(Lcom/android/server/wm/WindowState;)V
    .registers 2
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 2600
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRedrawForChangeTransition:Z

    if-eqz v0, :cond_7

    .line 2601
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRedrawForChangeTransition:Z

    .line 2603
    :cond_7
    return-void
.end method

.method static synthetic lambda$onConfigurationChanged$4(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p0, "nextConfig"    # Landroid/content/res/Configuration;
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2377
    iget v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x258

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->switchPopOver(Z)V

    .line 2378
    return-void
.end method

.method private static synthetic lambda$performClearTask$3(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;)V
    .registers 9
    .param p0, "reason"    # Ljava/lang/String;
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1946
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_5

    return-void

    .line 1948
    :cond_5
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v5, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;Z)I

    .line 1950
    return-void
.end method

.method static synthetic lambda$topActivityWithStartingWindow$0(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1711
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindowState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 1712
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->okToShowLocked()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    .line 1711
    :goto_d
    return v1
.end method

.method static synthetic lambda$topRunningActivity$11(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 4383
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static synthetic lambda$vJaPYJ0TW6MLVfOETMoxr75oHkk(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->isTopRunningNonDelayed(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$wc9vA2EWxCoWO_MzNTKvEB8eLgw(Lcom/android/server/wm/ActivityRecord;ILandroid/os/IBinder;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Task;->isTopRunning(Lcom/android/server/wm/ActivityRecord;ILandroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method private static matchesActivityInHistory(Lcom/android/server/wm/ActivityRecord;Landroid/content/ComponentName;)Z
    .registers 3
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "activityComponent"    # Landroid/content/ComponentName;

    .line 2138
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private performClearTaskLocked(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityRecord;
    .registers 8
    .param p1, "newR"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "launchFlags"    # I

    .line 1983
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->findActivityInHistory(Landroid/content/ComponentName;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1984
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 1986
    :cond_a
    sget-object v2, Lcom/android/server/wm/-$$Lambda$Task$lqGdYR9ABiPuG3_68w1VS6hrr8c;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$lqGdYR9ABiPuG3_68w1VS6hrr8c;

    const-class v3, Lcom/android/server/wm/ActivityRecord;

    .line 1987
    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    .line 1986
    invoke-static {v2, v3, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainFunction(Ljava/util/function/BiFunction;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledFunction;

    move-result-object v2

    .line 1988
    .local v2, "f":Lcom/android/internal/util/function/pooled/PooledFunction;
    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Function;)Z

    .line 1989
    invoke-interface {v2}, Lcom/android/internal/util/function/pooled/PooledFunction;->recycle()V

    .line 1993
    iget v3, v0, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    if-nez v3, :cond_36

    const/high16 v3, 0x20000000

    and-int/2addr v3, p2

    if-nez v3, :cond_36

    .line 1995
    invoke-static {p2}, Lcom/android/server/wm/ActivityStarter;->isDocumentLaunchesIntoExisting(I)Z

    move-result v3

    if-nez v3, :cond_36

    .line 1996
    iget-boolean v3, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v3, :cond_36

    .line 1997
    const/4 v3, 0x0

    const-string v4, "clear-task-top"

    invoke-virtual {v0, v4, v3}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 1998
    return-object v1

    .line 2002
    :cond_36
    return-object v0
.end method

.method private static replaceWindowsOnTaskMove(II)Z
    .registers 3
    .param p0, "sourceWindowingMode"    # I
    .param p1, "targetWindowingMode"    # I

    .line 1166
    const/4 v0, 0x5

    if-eq p0, v0, :cond_8

    if-ne p1, v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method private resolveLeafOnlyOverrideConfigs(Landroid/content/res/Configuration;Landroid/graphics/Rect;)V
    .registers 11
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;
    .param p2, "previousBounds"    # Landroid/graphics/Rect;

    .line 3198
    nop

    .line 3199
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 3200
    .local v0, "windowingMode":I
    if-nez v0, :cond_13

    .line 3201
    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 3228
    :cond_13
    nop

    .line 3229
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 3231
    .local v1, "outOverrideBounds":Landroid/graphics/Rect;
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2e

    .line 3232
    const/4 v2, 0x0

    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 3233
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    .line 3232
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/wm/Task;->computeFullscreenBounds(Landroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;I)V

    .line 3237
    return-void

    .line 3240
    :cond_2e
    invoke-virtual {p0, v1, p2, p1}, Lcom/android/server/wm/Task;->adjustForMinimalTaskDimensions(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)V

    .line 3243
    invoke-direct {p0, v1, p2}, Lcom/android/server/wm/Task;->adjustForMaximumTaskDimensions(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3246
    const/4 v2, 0x5

    if-ne v0, v2, :cond_85

    .line 3248
    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v2, v2

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v2, v3

    .line 3250
    .local v2, "density":F
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 3251
    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 3252
    .local v3, "parentBounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 3253
    .local v4, "display":Lcom/android/server/wm/DisplayContent;
    if-eqz v4, :cond_5f

    .line 3257
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 3260
    .local v5, "stableBounds":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v7

    invoke-virtual {v6, v7, v5}, Lcom/android/server/wm/WindowManagerService;->getStableInsetsLocked(ILandroid/graphics/Rect;)V

    .line 3261
    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 3269
    .end local v5    # "stableBounds":Landroid/graphics/Rect;
    :cond_5f
    const/high16 v5, 0x42680000    # 58.0f

    mul-float/2addr v5, v2

    float-to-int v5, v5

    const/high16 v6, 0x42000000    # 32.0f

    mul-float/2addr v6, v2

    float-to-int v6, v6

    invoke-static {v1, v3, v5, v6}, Lcom/android/server/wm/Task;->fitWithinBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 3274
    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    .line 3275
    .local v5, "offsetTop":I
    if-lez v5, :cond_85

    .line 3276
    nop

    .line 3277
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_80

    .line 3278
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v6

    iget v6, v6, Lcom/android/server/wm/DisplayPolicy;->mTopFreeFormFrameThickness:I

    goto :goto_81

    :cond_80
    move v6, v7

    :goto_81
    add-int/2addr v6, v5

    .line 3276
    invoke-virtual {v1, v7, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 3281
    .end local v2    # "density":F
    .end local v3    # "parentBounds":Landroid/graphics/Rect;
    .end local v4    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v5    # "offsetTop":I
    :cond_85
    return-void
.end method

.method static restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wm/ActivityStackSupervisor;)Lcom/android/server/wm/Task;
    .registers 84
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "stackSupervisor"    # Lcom/android/server/wm/ActivityStackSupervisor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 5524
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 5525
    .local v0, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 5526
    .local v2, "affinityIntent":Landroid/content/Intent;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5527
    .local v3, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    const/4 v4, 0x0

    .line 5528
    .local v4, "realActivity":Landroid/content/ComponentName;
    const/4 v5, 0x0

    .line 5529
    .local v5, "realActivitySuspended":Z
    const/4 v6, 0x0

    .line 5530
    .local v6, "origActivity":Landroid/content/ComponentName;
    const/4 v7, 0x0

    .line 5531
    .local v7, "affinity":Ljava/lang/String;
    const/4 v8, 0x0

    .line 5532
    .local v8, "rootAffinity":Ljava/lang/String;
    const/4 v9, 0x0

    .line 5533
    .local v9, "hasRootAffinity":Z
    const/4 v10, 0x0

    .line 5534
    .local v10, "windowLayoutAffinity":Ljava/lang/String;
    const/4 v11, 0x0

    .line 5535
    .local v11, "rootHasReset":Z
    const/4 v12, 0x0

    .line 5536
    .local v12, "autoRemoveRecents":Z
    const/4 v13, 0x0

    .line 5537
    .local v13, "askedCompatMode":Z
    const/4 v14, 0x0

    .line 5538
    .local v14, "taskType":I
    const/4 v15, 0x0

    .line 5539
    .local v15, "userId":I
    const/16 v16, 0x1

    .line 5540
    .local v16, "userSetupComplete":Z
    const/16 v17, -0x1

    .line 5541
    .local v17, "effectiveUid":I
    const/16 v18, 0x0

    .line 5542
    .local v18, "lastDescription":Ljava/lang/String;
    const-wide/16 v19, 0x0

    .line 5543
    .local v19, "lastTimeOnTop":J
    const/16 v21, 0x1

    .line 5544
    .local v21, "neverRelinquishIdentity":Z
    const/16 v22, -0x1

    .line 5545
    .local v22, "taskId":I
    move-object/from16 v23, v2

    .end local v2    # "affinityIntent":Landroid/content/Intent;
    .local v23, "affinityIntent":Landroid/content/Intent;
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 5546
    .local v2, "outerDepth":I
    new-instance v24, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct/range {v24 .. v24}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    move-object/from16 v61, v24

    .line 5547
    .local v61, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    const/16 v24, -0x1

    .line 5548
    .local v24, "taskAffiliation":I
    const/16 v25, 0x0

    .line 5549
    .local v25, "taskAffiliationColor":I
    const/16 v26, -0x1

    .line 5550
    .local v26, "prevTaskId":I
    const/16 v27, -0x1

    .line 5551
    .local v27, "nextTaskId":I
    const/16 v28, -0x1

    .line 5552
    .local v28, "callingUid":I
    const-string v29, ""

    .line 5553
    .local v29, "callingPackage":Ljava/lang/String;
    const/16 v30, 0x0

    .line 5554
    .local v30, "callingFeatureId":Ljava/lang/String;
    const/16 v31, 0x4

    .line 5555
    .local v31, "resizeMode":I
    const/16 v32, 0x0

    .line 5556
    .local v32, "supportsPictureInPicture":Z
    const/16 v33, 0x0

    .line 5557
    .local v33, "lastNonFullscreenBounds":Landroid/graphics/Rect;
    const/16 v34, -0x1

    .line 5558
    .local v34, "minWidth":I
    const/16 v35, -0x1

    .line 5559
    .local v35, "minHeight":I
    const/16 v36, 0x0

    .line 5561
    .local v36, "persistTaskVersion":I
    const/16 v37, 0x0

    .line 5562
    .local v37, "hostProcessName":Ljava/lang/String;
    const/16 v38, 0x0

    .line 5565
    .local v38, "dedicatedTask":Z
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v39

    move-object/from16 v40, v4

    .end local v4    # "realActivity":Landroid/content/ComponentName;
    .local v40, "realActivity":Landroid/content/ComponentName;
    const/4 v4, 0x1

    add-int/lit8 v39, v39, -0x1

    move/from16 v73, v5

    move-object/from16 v69, v10

    move/from16 v62, v15

    move/from16 v4, v22

    move/from16 v63, v25

    move/from16 v64, v26

    move/from16 v65, v27

    move/from16 v66, v28

    move-object/from16 v67, v29

    move-object/from16 v68, v30

    move-object/from16 v70, v33

    move/from16 v71, v34

    move/from16 v72, v35

    move-object/from16 v74, v37

    move/from16 v75, v38

    move-object/from16 v5, v40

    move-object/from16 v25, v0

    move v10, v9

    move v15, v14

    move/from16 v0, v39

    move-object v9, v8

    move v14, v13

    move-object v8, v7

    move v13, v12

    move-object v7, v6

    move v12, v11

    move/from16 v11, v31

    move/from16 v6, v36

    .end local v22    # "taskId":I
    .end local v26    # "prevTaskId":I
    .end local v27    # "nextTaskId":I
    .end local v28    # "callingUid":I
    .end local v29    # "callingPackage":Ljava/lang/String;
    .end local v30    # "callingFeatureId":Ljava/lang/String;
    .end local v31    # "resizeMode":I
    .end local v33    # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .end local v34    # "minWidth":I
    .end local v35    # "minHeight":I
    .end local v36    # "persistTaskVersion":I
    .end local v37    # "hostProcessName":Ljava/lang/String;
    .end local v38    # "dedicatedTask":Z
    .end local v40    # "realActivity":Landroid/content/ComponentName;
    .local v0, "attrNdx":I
    .local v4, "taskId":I
    .local v5, "realActivity":Landroid/content/ComponentName;
    .local v6, "persistTaskVersion":I
    .local v7, "origActivity":Landroid/content/ComponentName;
    .local v8, "affinity":Ljava/lang/String;
    .local v9, "rootAffinity":Ljava/lang/String;
    .local v10, "hasRootAffinity":Z
    .local v11, "resizeMode":I
    .local v12, "rootHasReset":Z
    .local v13, "autoRemoveRecents":Z
    .local v14, "askedCompatMode":Z
    .local v15, "taskType":I
    .local v25, "intent":Landroid/content/Intent;
    .local v62, "userId":I
    .local v63, "taskAffiliationColor":I
    .local v64, "prevTaskId":I
    .local v65, "nextTaskId":I
    .local v66, "callingUid":I
    .local v67, "callingPackage":Ljava/lang/String;
    .local v68, "callingFeatureId":Ljava/lang/String;
    .local v69, "windowLayoutAffinity":Ljava/lang/String;
    .local v70, "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .local v71, "minWidth":I
    .local v72, "minHeight":I
    .local v73, "realActivitySuspended":Z
    .local v74, "hostProcessName":Ljava/lang/String;
    .local v75, "dedicatedTask":Z
    :goto_85
    move/from16 v76, v14

    .end local v14    # "askedCompatMode":Z
    .local v76, "askedCompatMode":Z
    const-string v14, "ActivityTaskManager"

    if-ltz v0, :cond_3f6

    .line 5566
    move/from16 v77, v13

    .end local v13    # "autoRemoveRecents":Z
    .local v77, "autoRemoveRecents":Z
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v13

    .line 5567
    .local v13, "attrName":Ljava/lang/String;
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v28

    .line 5572
    .local v28, "attrValue":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v29

    move/from16 v78, v12

    .end local v12    # "rootHasReset":Z
    .local v78, "rootHasReset":Z
    sparse-switch v29, :sswitch_data_5be

    :cond_9e
    goto/16 :goto_227

    :sswitch_a0
    const-string/jumbo v12, "root_has_reset"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9e

    const/4 v12, 0x7

    goto/16 :goto_228

    :sswitch_ac
    const-string/jumbo v12, "window_layout_affinity"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9e

    const/4 v12, 0x6

    goto/16 :goto_228

    :sswitch_b8
    const-string/jumbo v12, "real_activity"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9e

    const/4 v12, 0x1

    goto/16 :goto_228

    :sswitch_c4
    const-string/jumbo v12, "never_relinquish_identity"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9e

    const/16 v12, 0x10

    goto/16 :goto_228

    :sswitch_d1
    const-string/jumbo v12, "host_process_name"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9e

    const/16 v12, 0x1e

    goto/16 :goto_228

    :sswitch_de
    const-string v12, "calling_package"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9e

    const/16 v12, 0x16

    goto/16 :goto_228

    :sswitch_ea
    const-string/jumbo v12, "persist_task_version"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9e

    const/16 v12, 0x1d

    goto/16 :goto_228

    :sswitch_f7
    const-string/jumbo v12, "last_description"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9e

    const/16 v12, 0xe

    goto/16 :goto_228

    :sswitch_104
    const-string v12, "affinity"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9e

    const/4 v12, 0x4

    goto/16 :goto_228

    :sswitch_10f
    const-string/jumbo v12, "min_width"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9e

    const/16 v12, 0x1b

    goto/16 :goto_228

    :sswitch_11c
    const-string v12, "calling_feature_id"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9e

    const/16 v12, 0x17

    goto/16 :goto_228

    :sswitch_128
    const-string/jumbo v12, "prev_affiliation"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9e

    const/16 v12, 0x12

    goto/16 :goto_228

    :sswitch_135
    const-string/jumbo v12, "task_type"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9e

    const/16 v12, 0xd

    goto/16 :goto_228

    :sswitch_142
    const-string v12, "calling_uid"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9e

    const/16 v12, 0x15

    goto/16 :goto_228

    :sswitch_14e
    const-string/jumbo v12, "user_id"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9e

    const/16 v12, 0xa

    goto/16 :goto_228

    :sswitch_15b
    const-string/jumbo v12, "root_affinity"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9e

    const/4 v12, 0x5

    goto/16 :goto_228

    :sswitch_167
    const-string/jumbo v12, "supports_picture_in_picture"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9e

    const/16 v12, 0x19

    goto/16 :goto_228

    :sswitch_174
    const-string v12, "auto_remove_recents"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9e

    const/16 v12, 0x8

    goto/16 :goto_228

    :sswitch_180
    const-string/jumbo v12, "orig_activity"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9e

    const/4 v12, 0x3

    goto/16 :goto_228

    :sswitch_18c
    const-string/jumbo v12, "non_fullscreen_bounds"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9e

    const/16 v12, 0x1a

    goto/16 :goto_228

    :sswitch_199
    const-string/jumbo v12, "min_height"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9e

    const/16 v12, 0x1c

    goto/16 :goto_228

    :sswitch_1a6
    const-string/jumbo v12, "resize_mode"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9e

    const/16 v12, 0x18

    goto/16 :goto_228

    :sswitch_1b3
    const-string v12, "effective_uid"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9e

    const/16 v12, 0xc

    goto/16 :goto_228

    :sswitch_1bf
    const-string/jumbo v12, "user_setup_complete"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9e

    const/16 v12, 0xb

    goto :goto_228

    :sswitch_1cb
    const-string/jumbo v12, "task_affiliation"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9e

    const/16 v12, 0x11

    goto :goto_228

    :sswitch_1d7
    const-string/jumbo v12, "real_activity_suspended"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9e

    const/4 v12, 0x2

    goto :goto_228

    :sswitch_1e2
    const-string/jumbo v12, "task_affiliation_color"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9e

    const/16 v12, 0x14

    goto :goto_228

    :sswitch_1ee
    const-string v12, "dedicated_task"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9e

    const/16 v12, 0x1f

    goto :goto_228

    :sswitch_1f9
    const-string/jumbo v12, "next_affiliation"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9e

    const/16 v12, 0x13

    goto :goto_228

    :sswitch_205
    const-string/jumbo v12, "task_id"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9e

    const/4 v12, 0x0

    goto :goto_228

    :sswitch_210
    const-string/jumbo v12, "last_time_moved"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9e

    const/16 v12, 0xf

    goto :goto_228

    :sswitch_21c
    const-string v12, "asked_compat_mode"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9e

    const/16 v12, 0x9

    goto :goto_228

    :goto_227
    const/4 v12, -0x1

    :goto_228
    packed-switch v12, :pswitch_data_640

    .line 5673
    const-string/jumbo v12, "task_description_"

    invoke-virtual {v13, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3e8

    .line 5674
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v79, v7

    .end local v7    # "origActivity":Landroid/content/ComponentName;
    .local v79, "origActivity":Landroid/content/ComponentName;
    const-string v7, "Task: Unknown attribute="

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3ea

    .line 5669
    .end local v79    # "origActivity":Landroid/content/ComponentName;
    .restart local v7    # "origActivity":Landroid/content/ComponentName;
    :pswitch_24c
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 5670
    .end local v75    # "dedicatedTask":Z
    .local v12, "dedicatedTask":Z
    move/from16 v75, v12

    move/from16 v14, v76

    move/from16 v13, v77

    move/from16 v12, v78

    goto/16 :goto_3f2

    .line 5666
    .end local v12    # "dedicatedTask":Z
    .restart local v75    # "dedicatedTask":Z
    :pswitch_25a
    move-object/from16 v12, v28

    .line 5667
    .end local v74    # "hostProcessName":Ljava/lang/String;
    .local v12, "hostProcessName":Ljava/lang/String;
    move-object/from16 v74, v12

    move/from16 v14, v76

    move/from16 v13, v77

    move/from16 v12, v78

    goto/16 :goto_3f2

    .line 5662
    .end local v12    # "hostProcessName":Ljava/lang/String;
    .restart local v74    # "hostProcessName":Ljava/lang/String;
    :pswitch_266
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 5663
    move/from16 v14, v76

    move/from16 v13, v77

    move/from16 v12, v78

    goto/16 :goto_3f2

    .line 5659
    :pswitch_272
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 5660
    .end local v72    # "minHeight":I
    .local v12, "minHeight":I
    move/from16 v72, v12

    move/from16 v14, v76

    move/from16 v13, v77

    move/from16 v12, v78

    goto/16 :goto_3f2

    .line 5656
    .end local v12    # "minHeight":I
    .restart local v72    # "minHeight":I
    :pswitch_280
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 5657
    .end local v71    # "minWidth":I
    .local v12, "minWidth":I
    move/from16 v71, v12

    move/from16 v14, v76

    move/from16 v13, v77

    move/from16 v12, v78

    goto/16 :goto_3f2

    .line 5653
    .end local v12    # "minWidth":I
    .restart local v71    # "minWidth":I
    :pswitch_28e
    invoke-static/range {v28 .. v28}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v12

    .line 5654
    .end local v70    # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .local v12, "lastNonFullscreenBounds":Landroid/graphics/Rect;
    move-object/from16 v70, v12

    move/from16 v14, v76

    move/from16 v13, v77

    move/from16 v12, v78

    goto/16 :goto_3f2

    .line 5650
    .end local v12    # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .restart local v70    # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    :pswitch_29c
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 5651
    .end local v32    # "supportsPictureInPicture":Z
    .local v12, "supportsPictureInPicture":Z
    move/from16 v32, v12

    move/from16 v14, v76

    move/from16 v13, v77

    move/from16 v12, v78

    goto/16 :goto_3f2

    .line 5647
    .end local v12    # "supportsPictureInPicture":Z
    .restart local v32    # "supportsPictureInPicture":Z
    :pswitch_2aa
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 5648
    move/from16 v14, v76

    move/from16 v13, v77

    move/from16 v12, v78

    goto/16 :goto_3f2

    .line 5644
    :pswitch_2b6
    move-object/from16 v12, v28

    .line 5645
    .end local v68    # "callingFeatureId":Ljava/lang/String;
    .local v12, "callingFeatureId":Ljava/lang/String;
    move-object/from16 v68, v12

    move/from16 v14, v76

    move/from16 v13, v77

    move/from16 v12, v78

    goto/16 :goto_3f2

    .line 5641
    .end local v12    # "callingFeatureId":Ljava/lang/String;
    .restart local v68    # "callingFeatureId":Ljava/lang/String;
    :pswitch_2c2
    move-object/from16 v12, v28

    .line 5642
    .end local v67    # "callingPackage":Ljava/lang/String;
    .local v12, "callingPackage":Ljava/lang/String;
    move-object/from16 v67, v12

    move/from16 v14, v76

    move/from16 v13, v77

    move/from16 v12, v78

    goto/16 :goto_3f2

    .line 5638
    .end local v12    # "callingPackage":Ljava/lang/String;
    .restart local v67    # "callingPackage":Ljava/lang/String;
    :pswitch_2ce
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 5639
    .end local v66    # "callingUid":I
    .local v12, "callingUid":I
    move/from16 v66, v12

    move/from16 v14, v76

    move/from16 v13, v77

    move/from16 v12, v78

    goto/16 :goto_3f2

    .line 5635
    .end local v12    # "callingUid":I
    .restart local v66    # "callingUid":I
    :pswitch_2dc
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 5636
    .end local v63    # "taskAffiliationColor":I
    .local v12, "taskAffiliationColor":I
    move/from16 v63, v12

    move/from16 v14, v76

    move/from16 v13, v77

    move/from16 v12, v78

    goto/16 :goto_3f2

    .line 5632
    .end local v12    # "taskAffiliationColor":I
    .restart local v63    # "taskAffiliationColor":I
    :pswitch_2ea
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 5633
    .end local v65    # "nextTaskId":I
    .local v12, "nextTaskId":I
    move/from16 v65, v12

    move/from16 v14, v76

    move/from16 v13, v77

    move/from16 v12, v78

    goto/16 :goto_3f2

    .line 5629
    .end local v12    # "nextTaskId":I
    .restart local v65    # "nextTaskId":I
    :pswitch_2f8
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 5630
    .end local v64    # "prevTaskId":I
    .local v12, "prevTaskId":I
    move/from16 v64, v12

    move/from16 v14, v76

    move/from16 v13, v77

    move/from16 v12, v78

    goto/16 :goto_3f2

    .line 5626
    .end local v12    # "prevTaskId":I
    .restart local v64    # "prevTaskId":I
    :pswitch_306
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 5627
    .end local v24    # "taskAffiliation":I
    .local v12, "taskAffiliation":I
    move/from16 v24, v12

    move/from16 v14, v76

    move/from16 v13, v77

    move/from16 v12, v78

    goto/16 :goto_3f2

    .line 5623
    .end local v12    # "taskAffiliation":I
    .restart local v24    # "taskAffiliation":I
    :pswitch_314
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 5624
    .end local v21    # "neverRelinquishIdentity":Z
    .local v12, "neverRelinquishIdentity":Z
    move/from16 v21, v12

    move/from16 v14, v76

    move/from16 v13, v77

    move/from16 v12, v78

    goto/16 :goto_3f2

    .line 5620
    .end local v12    # "neverRelinquishIdentity":Z
    .restart local v21    # "neverRelinquishIdentity":Z
    :pswitch_322
    invoke-static/range {v28 .. v28}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    .line 5621
    move/from16 v14, v76

    move/from16 v13, v77

    move/from16 v12, v78

    goto/16 :goto_3f2

    .line 5617
    :pswitch_32e
    move-object/from16 v12, v28

    .line 5618
    .end local v18    # "lastDescription":Ljava/lang/String;
    .local v12, "lastDescription":Ljava/lang/String;
    move-object/from16 v18, v12

    move/from16 v14, v76

    move/from16 v13, v77

    move/from16 v12, v78

    goto/16 :goto_3f2

    .line 5614
    .end local v12    # "lastDescription":Ljava/lang/String;
    .restart local v18    # "lastDescription":Ljava/lang/String;
    :pswitch_33a
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 5615
    .end local v15    # "taskType":I
    .local v12, "taskType":I
    move v15, v12

    move/from16 v14, v76

    move/from16 v13, v77

    move/from16 v12, v78

    goto/16 :goto_3f2

    .line 5611
    .end local v12    # "taskType":I
    .restart local v15    # "taskType":I
    :pswitch_347
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 5612
    .end local v17    # "effectiveUid":I
    .local v12, "effectiveUid":I
    move/from16 v17, v12

    move/from16 v14, v76

    move/from16 v13, v77

    move/from16 v12, v78

    goto/16 :goto_3f2

    .line 5608
    .end local v12    # "effectiveUid":I
    .restart local v17    # "effectiveUid":I
    :pswitch_355
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 5609
    .end local v16    # "userSetupComplete":Z
    .local v12, "userSetupComplete":Z
    move/from16 v16, v12

    move/from16 v14, v76

    move/from16 v13, v77

    move/from16 v12, v78

    goto/16 :goto_3f2

    .line 5605
    .end local v12    # "userSetupComplete":Z
    .restart local v16    # "userSetupComplete":Z
    :pswitch_363
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 5606
    .end local v62    # "userId":I
    .local v12, "userId":I
    move/from16 v62, v12

    move/from16 v14, v76

    move/from16 v13, v77

    move/from16 v12, v78

    goto/16 :goto_3f2

    .line 5602
    .end local v12    # "userId":I
    .restart local v62    # "userId":I
    :pswitch_371
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 5603
    .end local v76    # "askedCompatMode":Z
    .local v12, "askedCompatMode":Z
    move v14, v12

    move/from16 v13, v77

    move/from16 v12, v78

    goto/16 :goto_3f2

    .line 5599
    .end local v12    # "askedCompatMode":Z
    .restart local v76    # "askedCompatMode":Z
    :pswitch_37c
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 5600
    .end local v77    # "autoRemoveRecents":Z
    .local v12, "autoRemoveRecents":Z
    move v13, v12

    move/from16 v14, v76

    move/from16 v12, v78

    goto/16 :goto_3f2

    .line 5596
    .end local v12    # "autoRemoveRecents":Z
    .restart local v77    # "autoRemoveRecents":Z
    :pswitch_387
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 5597
    .end local v78    # "rootHasReset":Z
    .local v12, "rootHasReset":Z
    move/from16 v14, v76

    move/from16 v13, v77

    goto/16 :goto_3f2

    .line 5593
    .end local v12    # "rootHasReset":Z
    .restart local v78    # "rootHasReset":Z
    :pswitch_391
    move-object/from16 v12, v28

    .line 5594
    .end local v69    # "windowLayoutAffinity":Ljava/lang/String;
    .local v12, "windowLayoutAffinity":Ljava/lang/String;
    move-object/from16 v69, v12

    move/from16 v14, v76

    move/from16 v13, v77

    move/from16 v12, v78

    goto/16 :goto_3f2

    .line 5589
    .end local v12    # "windowLayoutAffinity":Ljava/lang/String;
    .restart local v69    # "windowLayoutAffinity":Ljava/lang/String;
    :pswitch_39d
    move-object/from16 v9, v28

    .line 5590
    const/4 v10, 0x1

    .line 5591
    move/from16 v14, v76

    move/from16 v13, v77

    move/from16 v12, v78

    goto :goto_3f2

    .line 5586
    :pswitch_3a7
    move-object/from16 v8, v28

    .line 5587
    move/from16 v14, v76

    move/from16 v13, v77

    move/from16 v12, v78

    goto :goto_3f2

    .line 5583
    :pswitch_3b0
    invoke-static/range {v28 .. v28}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    .line 5584
    move/from16 v14, v76

    move/from16 v13, v77

    move/from16 v12, v78

    goto :goto_3f2

    .line 5580
    :pswitch_3bb
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 5581
    .end local v73    # "realActivitySuspended":Z
    .local v12, "realActivitySuspended":Z
    move/from16 v73, v12

    move/from16 v14, v76

    move/from16 v13, v77

    move/from16 v12, v78

    goto :goto_3f2

    .line 5577
    .end local v12    # "realActivitySuspended":Z
    .restart local v73    # "realActivitySuspended":Z
    :pswitch_3cc
    invoke-static/range {v28 .. v28}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 5578
    move/from16 v14, v76

    move/from16 v13, v77

    move/from16 v12, v78

    goto :goto_3f2

    .line 5574
    :pswitch_3d7
    const/4 v12, -0x1

    if-ne v4, v12, :cond_3e5

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move/from16 v14, v76

    move/from16 v13, v77

    move/from16 v12, v78

    goto :goto_3f2

    :cond_3e5
    move-object/from16 v79, v7

    goto :goto_3ea

    .line 5673
    :cond_3e8
    move-object/from16 v79, v7

    .line 5565
    .end local v13    # "attrName":Ljava/lang/String;
    .end local v28    # "attrValue":Ljava/lang/String;
    :goto_3ea
    move/from16 v14, v76

    move/from16 v13, v77

    move/from16 v12, v78

    move-object/from16 v7, v79

    .end local v76    # "askedCompatMode":Z
    .end local v77    # "autoRemoveRecents":Z
    .end local v78    # "rootHasReset":Z
    .local v12, "rootHasReset":Z
    .local v13, "autoRemoveRecents":Z
    .restart local v14    # "askedCompatMode":Z
    :goto_3f2
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_85

    .end local v14    # "askedCompatMode":Z
    .restart local v76    # "askedCompatMode":Z
    :cond_3f6
    move-object/from16 v79, v7

    move/from16 v78, v12

    move/from16 v77, v13

    .line 5678
    .end local v0    # "attrNdx":I
    .end local v7    # "origActivity":Landroid/content/ComponentName;
    .end local v12    # "rootHasReset":Z
    .end local v13    # "autoRemoveRecents":Z
    .restart local v77    # "autoRemoveRecents":Z
    .restart local v78    # "rootHasReset":Z
    .restart local v79    # "origActivity":Landroid/content/ComponentName;
    move-object/from16 v7, v61

    .end local v61    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .local v7, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    invoke-virtual {v7, v1}, Landroid/app/ActivityManager$TaskDescription;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    move-object/from16 v12, v25

    .line 5681
    .end local v25    # "intent":Landroid/content/Intent;
    .local v12, "intent":Landroid/content/Intent;
    :goto_403
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v13, v0

    const/4 v1, 0x1

    .local v13, "event":I
    if-eq v0, v1, :cond_47b

    const/4 v1, 0x3

    if-ne v13, v1, :cond_419

    .line 5682
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-lt v0, v2, :cond_415

    goto :goto_419

    :cond_415
    move/from16 v61, v2

    goto/16 :goto_47d

    .line 5683
    :cond_419
    :goto_419
    const/4 v1, 0x2

    if-ne v13, v1, :cond_476

    .line 5684
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 5686
    .local v0, "name":Ljava/lang/String;
    const-string v1, "affinity_intent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_431

    .line 5687
    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v1

    move-object/from16 v23, v1

    move/from16 v61, v2

    .end local v23    # "affinityIntent":Landroid/content/Intent;
    .local v1, "affinityIntent":Landroid/content/Intent;
    goto :goto_471

    .line 5688
    .end local v1    # "affinityIntent":Landroid/content/Intent;
    .restart local v23    # "affinityIntent":Landroid/content/Intent;
    :cond_431
    const-string/jumbo v1, "intent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_442

    .line 5689
    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v1

    move-object v12, v1

    move/from16 v61, v2

    .end local v12    # "intent":Landroid/content/Intent;
    .local v1, "intent":Landroid/content/Intent;
    goto :goto_471

    .line 5690
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v12    # "intent":Landroid/content/Intent;
    :cond_442
    const-string v1, "activity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_457

    .line 5691
    nop

    .line 5692
    invoke-static/range {p0 .. p1}, Lcom/android/server/wm/ActivityRecord;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wm/ActivityStackSupervisor;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 5696
    .local v1, "activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_454

    .line 5697
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5699
    .end local v1    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_454
    move/from16 v61, v2

    goto :goto_471

    .line 5700
    :cond_457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v61, v2

    .end local v2    # "outerDepth":I
    .local v61, "outerDepth":I
    const-string/jumbo v2, "restoreTask: Unexpected name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5701
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5703
    .end local v0    # "name":Ljava/lang/String;
    :goto_471
    move-object/from16 v1, p0

    move/from16 v2, v61

    goto :goto_403

    .line 5683
    .end local v61    # "outerDepth":I
    .restart local v2    # "outerDepth":I
    :cond_476
    move/from16 v61, v2

    .end local v2    # "outerDepth":I
    .restart local v61    # "outerDepth":I
    move-object/from16 v1, p0

    goto :goto_403

    .line 5681
    .end local v61    # "outerDepth":I
    .restart local v2    # "outerDepth":I
    :cond_47b
    move/from16 v61, v2

    .line 5705
    .end local v2    # "outerDepth":I
    .restart local v61    # "outerDepth":I
    :goto_47d
    if-nez v10, :cond_481

    .line 5706
    move-object v9, v8

    goto :goto_48a

    .line 5707
    :cond_481
    const-string v0, "@"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48a

    .line 5708
    const/4 v9, 0x0

    .line 5710
    :cond_48a
    :goto_48a
    if-gtz v17, :cond_4f5

    .line 5711
    if-eqz v12, :cond_490

    move-object v0, v12

    goto :goto_492

    :cond_490
    move-object/from16 v0, v23

    :goto_492
    move-object v1, v0

    .line 5712
    .local v1, "checkIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 5713
    .end local v17    # "effectiveUid":I
    .local v2, "effectiveUid":I
    if-eqz v1, :cond_4c4

    .line 5714
    move/from16 v17, v2

    .end local v2    # "effectiveUid":I
    .restart local v17    # "effectiveUid":I
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 5716
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    nop

    .line 5717
    :try_start_49d
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_4a5
    .catch Landroid/os/RemoteException; {:try_start_49d .. :try_end_4a5} :catch_4bc

    move/from16 v80, v10

    .end local v10    # "hasRootAffinity":Z
    .local v80, "hasRootAffinity":Z
    const/16 v10, 0x2200

    .line 5716
    move/from16 v81, v13

    move/from16 v13, v62

    .end local v62    # "userId":I
    .local v13, "userId":I
    .local v81, "event":I
    :try_start_4ad
    invoke-interface {v2, v0, v10, v13}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 5720
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_4b7

    .line 5721
    iget v10, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_4b5
    .catch Landroid/os/RemoteException; {:try_start_4ad .. :try_end_4b5} :catch_4ba

    move/from16 v17, v10

    .line 5724
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_4b7
    move/from16 v0, v17

    goto :goto_4ce

    .line 5723
    :catch_4ba
    move-exception v0

    goto :goto_4cc

    .end local v80    # "hasRootAffinity":Z
    .end local v81    # "event":I
    .restart local v10    # "hasRootAffinity":Z
    .local v13, "event":I
    .restart local v62    # "userId":I
    :catch_4bc
    move-exception v0

    move/from16 v80, v10

    move/from16 v81, v13

    move/from16 v13, v62

    .end local v10    # "hasRootAffinity":Z
    .end local v62    # "userId":I
    .local v13, "userId":I
    .restart local v80    # "hasRootAffinity":Z
    .restart local v81    # "event":I
    goto :goto_4cc

    .line 5713
    .end local v17    # "effectiveUid":I
    .end local v80    # "hasRootAffinity":Z
    .end local v81    # "event":I
    .local v2, "effectiveUid":I
    .restart local v10    # "hasRootAffinity":Z
    .local v13, "event":I
    .restart local v62    # "userId":I
    :cond_4c4
    move/from16 v17, v2

    move/from16 v80, v10

    move/from16 v81, v13

    move/from16 v13, v62

    .line 5726
    .end local v2    # "effectiveUid":I
    .end local v10    # "hasRootAffinity":Z
    .end local v62    # "userId":I
    .local v13, "userId":I
    .restart local v17    # "effectiveUid":I
    .restart local v80    # "hasRootAffinity":Z
    .restart local v81    # "event":I
    :goto_4cc
    move/from16 v0, v17

    .end local v17    # "effectiveUid":I
    .local v0, "effectiveUid":I
    :goto_4ce
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Updating task #"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " for "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ": effectiveUid="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v17, v0

    goto :goto_4fb

    .line 5710
    .end local v0    # "effectiveUid":I
    .end local v1    # "checkIntent":Landroid/content/Intent;
    .end local v80    # "hasRootAffinity":Z
    .end local v81    # "event":I
    .restart local v10    # "hasRootAffinity":Z
    .local v13, "event":I
    .restart local v17    # "effectiveUid":I
    .restart local v62    # "userId":I
    :cond_4f5
    move/from16 v80, v10

    move/from16 v81, v13

    move/from16 v13, v62

    .line 5730
    .end local v10    # "hasRootAffinity":Z
    .end local v62    # "userId":I
    .local v13, "userId":I
    .restart local v80    # "hasRootAffinity":Z
    .restart local v81    # "event":I
    :goto_4fb
    const/4 v1, 0x1

    if-ge v6, v1, :cond_507

    .line 5735
    if-ne v15, v1, :cond_510

    const/4 v1, 0x2

    if-ne v11, v1, :cond_510

    .line 5736
    const/4 v11, 0x1

    move/from16 v0, v32

    goto :goto_512

    .line 5743
    :cond_507
    const/4 v1, 0x3

    if-ne v11, v1, :cond_510

    .line 5744
    const/4 v11, 0x2

    .line 5745
    const/16 v32, 0x1

    move/from16 v0, v32

    goto :goto_512

    .line 5749
    :cond_510
    move/from16 v0, v32

    .end local v32    # "supportsPictureInPicture":Z
    .local v0, "supportsPictureInPicture":Z
    :goto_512
    new-instance v1, Lcom/android/server/wm/ActivityStack;

    move-object/from16 v25, v1

    move-object/from16 v2, p1

    iget-object v10, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    move-object/from16 v26, v10

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    move/from16 v27, v4

    move-object/from16 v28, v12

    move-object/from16 v29, v23

    move-object/from16 v30, v8

    move-object/from16 v31, v9

    move-object/from16 v32, v5

    move-object/from16 v33, v79

    move/from16 v34, v78

    move/from16 v35, v77

    move/from16 v36, v76

    move/from16 v37, v13

    move/from16 v38, v17

    move-object/from16 v39, v18

    move-wide/from16 v40, v19

    move/from16 v42, v21

    move-object/from16 v43, v7

    move/from16 v44, v24

    move/from16 v45, v64

    move/from16 v46, v65

    move/from16 v47, v63

    move/from16 v48, v66

    move-object/from16 v49, v67

    move-object/from16 v50, v68

    move/from16 v51, v11

    move/from16 v52, v0

    move/from16 v53, v73

    move/from16 v54, v16

    move/from16 v55, v71

    move/from16 v56, v72

    invoke-direct/range {v25 .. v60}, Lcom/android/server/wm/ActivityStack;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;JZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;Ljava/lang/String;IZZZIILandroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Lcom/android/server/wm/ActivityStack;)V

    .line 5757
    .local v1, "task":Lcom/android/server/wm/Task;
    move-object/from16 v10, v70

    .end local v70    # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .local v10, "lastNonFullscreenBounds":Landroid/graphics/Rect;
    iput-object v10, v1, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 5758
    invoke-virtual {v1, v10}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 5759
    move-object/from16 v2, v69

    .end local v69    # "windowLayoutAffinity":Ljava/lang/String;
    .local v2, "windowLayoutAffinity":Ljava/lang/String;
    iput-object v2, v1, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    .line 5761
    sget-boolean v25, Lcom/samsung/android/rune/CoreRune;->FW_DEDICATED_MEMORY:Z

    if-eqz v25, :cond_57d

    .line 5762
    move-object/from16 v25, v2

    move-object/from16 v2, v74

    .end local v74    # "hostProcessName":Ljava/lang/String;
    .local v2, "hostProcessName":Ljava/lang/String;
    .local v25, "windowLayoutAffinity":Ljava/lang/String;
    iput-object v2, v1, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    .line 5763
    move-object/from16 v26, v2

    move/from16 v2, v75

    .end local v75    # "dedicatedTask":Z
    .local v2, "dedicatedTask":Z
    .local v26, "hostProcessName":Ljava/lang/String;
    iput-boolean v2, v1, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    goto :goto_583

    .line 5761
    .end local v25    # "windowLayoutAffinity":Ljava/lang/String;
    .end local v26    # "hostProcessName":Ljava/lang/String;
    .local v2, "windowLayoutAffinity":Ljava/lang/String;
    .restart local v74    # "hostProcessName":Ljava/lang/String;
    .restart local v75    # "dedicatedTask":Z
    :cond_57d
    move-object/from16 v25, v2

    move-object/from16 v26, v74

    move/from16 v2, v75

    .line 5767
    .end local v74    # "hostProcessName":Ljava/lang/String;
    .end local v75    # "dedicatedTask":Z
    .local v2, "dedicatedTask":Z
    .restart local v25    # "windowLayoutAffinity":Ljava/lang/String;
    .restart local v26    # "hostProcessName":Ljava/lang/String;
    :goto_583
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v27

    const/16 v22, 0x1

    add-int/lit8 v27, v27, -0x1

    move/from16 v22, v0

    move/from16 v0, v27

    .local v0, "activityNdx":I
    .local v22, "supportsPictureInPicture":Z
    :goto_58f
    if-ltz v0, :cond_5a3

    .line 5768
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    move/from16 v28, v2

    .end local v2    # "dedicatedTask":Z
    .local v28, "dedicatedTask":Z
    move-object/from16 v2, v27

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/ActivityRecord;)V

    .line 5767
    add-int/lit8 v0, v0, -0x1

    move/from16 v2, v28

    goto :goto_58f

    .end local v28    # "dedicatedTask":Z
    .restart local v2    # "dedicatedTask":Z
    :cond_5a3
    move/from16 v28, v2

    .line 5771
    .end local v0    # "activityNdx":I
    .end local v2    # "dedicatedTask":Z
    .restart local v28    # "dedicatedTask":Z
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v0, :cond_5bd

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restored task="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5772
    :cond_5bd
    return-object v1

    :sswitch_data_5be
    .sparse-switch
        -0x7f3eb8a7 -> :sswitch_21c
        -0x5ccdaff6 -> :sswitch_210
        -0x5ba06deb -> :sswitch_205
        -0x591a685c -> :sswitch_1f9
        -0x5131b22b -> :sswitch_1ee
        -0x4d0e36e6 -> :sswitch_1e2
        -0x43dc2f14 -> :sswitch_1d7
        -0x430d08ca -> :sswitch_1cb
        -0x3a0f4851 -> :sswitch_1bf
        -0x37680e48 -> :sswitch_1b3
        -0x3395d9b2 -> :sswitch_1a6
        -0x313f784c -> :sswitch_199
        -0x2a27c539 -> :sswitch_18c
        -0x2a0990b3 -> :sswitch_180
        -0x1df202b3 -> :sswitch_174
        -0x158140a0 -> :sswitch_167
        -0x9b3481b -> :sswitch_15b
        -0x8c511f1 -> :sswitch_14e
        -0x7e175ab -> :sswitch_142
        0xac8bdb4 -> :sswitch_135
        0x13bdcee4 -> :sswitch_128
        0x1782e55f -> :sswitch_11c
        0x2046b199 -> :sswitch_10f
        0x24172928 -> :sswitch_104
        0x33cf43d3 -> :sswitch_f7
        0x3c12eca9 -> :sswitch_ea
        0x40756fcb -> :sswitch_de
        0x42bea792 -> :sswitch_d1
        0x56e1584e -> :sswitch_c4
        0x5bc3bc90 -> :sswitch_b8
        0x772fa04e -> :sswitch_ac
        0x789a804d -> :sswitch_a0
    .end sparse-switch

    :pswitch_data_640
    .packed-switch 0x0
        :pswitch_3d7
        :pswitch_3cc
        :pswitch_3bb
        :pswitch_3b0
        :pswitch_3a7
        :pswitch_39d
        :pswitch_391
        :pswitch_387
        :pswitch_37c
        :pswitch_371
        :pswitch_363
        :pswitch_355
        :pswitch_347
        :pswitch_33a
        :pswitch_32e
        :pswitch_322
        :pswitch_314
        :pswitch_306
        :pswitch_2f8
        :pswitch_2ea
        :pswitch_2dc
        :pswitch_2ce
        :pswitch_2c2
        :pswitch_2b6
        :pswitch_2aa
        :pswitch_29c
        :pswitch_28e
        :pswitch_280
        :pswitch_272
        :pswitch_266
        :pswitch_25a
        :pswitch_24c
    .end packed-switch
.end method

.method private restoreResizeMode()V
    .registers 3

    .line 6507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "restoreResizeMode() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6508
    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 6509
    return-void
.end method

.method private static saveActivityToXml(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lorg/xmlpull/v1/XmlSerializer;)Z
    .registers 7
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "first"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "out"    # Lorg/xmlpull/v1/XmlSerializer;

    .line 5504
    const-string v0, "activity"

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->persistableMode:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2f

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isPersistable()Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 5505
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v3, 0x80000

    and-int/2addr v1, v3

    or-int/lit16 v1, v1, 0x2000

    if-ne v1, v3, :cond_1f

    if-eq p0, p1, :cond_1f

    goto :goto_2f

    .line 5512
    :cond_1f
    const/4 v1, 0x0

    :try_start_20
    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5513
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityRecord;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 5514
    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_29} :catch_2b

    .line 5515
    const/4 v0, 0x0

    return v0

    .line 5516
    :catch_2b
    move-exception v0

    .line 5517
    .local v0, "e":Ljava/lang/Exception;
    sput-object v0, Lcom/android/server/wm/Task;->sTmpException:Ljava/lang/Exception;

    .line 5518
    return v2

    .line 5509
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2f
    :goto_2f
    return v2
.end method

.method private saveLaunchingStateIfNeeded()V
    .registers 2

    .line 2755
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->saveLaunchingStateIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    .line 2756
    return-void
.end method

.method private saveLaunchingStateIfNeeded(Lcom/android/server/wm/DisplayContent;)V
    .registers 5
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;

    .line 2759
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getHasBeenVisible()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 2761
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    .line 2762
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_1b

    .line 2770
    :cond_1a
    return-void

    .line 2774
    :cond_1b
    :goto_1b
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    .line 2775
    .local v0, "windowingMode":I
    const/4 v1, 0x1

    const/4 v2, 0x5

    if-eq v0, v1, :cond_26

    if-eq v0, v2, :cond_26

    .line 2777
    return-void

    .line 2783
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getDisplayWindowingMode()I

    move-result v1

    if-eq v1, v2, :cond_31

    .line 2788
    return-void

    .line 2793
    :cond_31
    iget-object v1, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-nez v1, :cond_36

    .line 2794
    return-void

    .line 2803
    :cond_36
    iget-object v1, p0, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-virtual {v1, p0, p1}, Lcom/android/server/wm/LaunchParamsPersister;->saveTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;)V

    .line 2804
    return-void
.end method

.method private sendTaskAppeared()V
    .registers 3

    .line 5838
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz v0, :cond_d

    .line 5839
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    iget-object v1, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/TaskOrganizerController;->onTaskAppeared(Landroid/window/ITaskOrganizer;Lcom/android/server/wm/Task;)V

    .line 5841
    :cond_d
    return-void
.end method

.method private sendTaskVanished(Landroid/window/ITaskOrganizer;)V
    .registers 3
    .param p1, "organizer"    # Landroid/window/ITaskOrganizer;

    .line 5844
    if-eqz p1, :cond_9

    .line 5845
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v0, p1, p0}, Lcom/android/server/wm/TaskOrganizerController;->onTaskVanished(Landroid/window/ITaskOrganizer;Lcom/android/server/wm/Task;)V

    .line 5847
    :cond_9
    return-void
.end method

.method private setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .registers 12
    .param p1, "_intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;

    .line 1241
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    .line 1242
    .local v0, "isLeaf":Z
    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_16

    .line 1243
    iget v1, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v1, v1, 0x1000

    if-nez v1, :cond_12

    move v1, v2

    goto :goto_13

    :cond_12
    move v1, v3

    :goto_13
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    goto :goto_1d

    .line 1245
    :cond_16
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    if-eqz v1, :cond_1d

    if-eqz v0, :cond_1d

    .line 1246
    return-void

    .line 1249
    :cond_1d
    :goto_1d
    const/4 v1, 0x0

    if-eqz v0, :cond_23

    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    goto :goto_24

    :cond_23
    move-object v4, v1

    :goto_24
    iput-object v4, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    .line 1250
    iget-object v5, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-nez v5, :cond_2c

    .line 1254
    iput-object v4, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    .line 1256
    :cond_2c
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v4, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    .line 1257
    iput-object v1, p0, Lcom/android/server/wm/Task;->stringName:Ljava/lang/String;

    .line 1259
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    const-string v5, "Setting Intent of "

    const-string v6, "ActivityTaskManager"

    if-nez v4, :cond_83

    .line 1260
    if-eqz p1, :cond_56

    .line 1264
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v4

    if-nez v4, :cond_4a

    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v4

    if-eqz v4, :cond_56

    .line 1265
    :cond_4a
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object p1, v4

    .line 1266
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 1267
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 1270
    :cond_56
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v4, :cond_74

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    :cond_74
    iput-object p1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 1272
    if-eqz p1, :cond_7d

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    goto :goto_7e

    :cond_7d
    move-object v4, v1

    :goto_7e
    iput-object v4, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 1273
    iput-object v1, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    goto :goto_d1

    .line 1275
    :cond_83
    new-instance v4, Landroid/content/ComponentName;

    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v4, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    .local v4, "targetComponent":Landroid/content/ComponentName;
    if-eqz p1, :cond_c2

    .line 1278
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1279
    .local v7, "targetIntent":Landroid/content/Intent;
    invoke-virtual {v7, v1}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 1280
    invoke-virtual {v7, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 1281
    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v8, :cond_b7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to target "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    :cond_b7
    iput-object v7, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 1284
    iput-object v4, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 1285
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    .line 1286
    .end local v7    # "targetIntent":Landroid/content/Intent;
    goto :goto_d1

    .line 1287
    :cond_c2
    iput-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 1288
    iput-object v4, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 1289
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    .line 1292
    .end local v4    # "targetComponent":Landroid/content/ComponentName;
    :goto_d1
    nop

    .line 1293
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-nez v4, :cond_d7

    goto :goto_db

    :cond_d7
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    :goto_db
    iput-object v1, p0, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    .line 1295
    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-nez v1, :cond_e3

    move v1, v3

    goto :goto_e7

    :cond_e3
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    .line 1296
    .local v1, "intentFlags":I
    :goto_e7
    const/high16 v4, 0x200000

    and-int/2addr v4, v1

    if-eqz v4, :cond_ee

    .line 1299
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->rootWasReset:Z

    .line 1301
    :cond_ee
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/wm/Task;->mUserId:I

    .line 1302
    iget-object v4, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 1303
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wm/Task;->mUserId:I

    .line 1302
    const-string/jumbo v6, "user_setup_complete"

    invoke-static {v4, v6, v3, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_10d

    move v4, v2

    goto :goto_10e

    :cond_10d
    move v4, v3

    :goto_10e
    iput-boolean v4, p0, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    .line 1304
    iget v4, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_119

    .line 1306
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    goto :goto_12d

    .line 1307
    :cond_119
    const v4, 0x82000

    and-int/2addr v4, v1

    const/high16 v5, 0x80000

    if-ne v4, v5, :cond_12b

    .line 1312
    iget v4, p2, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-eqz v4, :cond_128

    .line 1313
    iput-boolean v3, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    goto :goto_12d

    .line 1315
    :cond_128
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    goto :goto_12d

    .line 1318
    :cond_12b
    iput-boolean v3, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    .line 1320
    :goto_12d
    iget v2, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    iget v3, p2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    if-eq v2, v3, :cond_13a

    .line 1321
    iget v2, p2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    iput v2, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 1327
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    .line 1329
    :cond_13a
    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    .line 1336
    invoke-direct {p0, p2}, Lcom/android/server/wm/Task;->initMinMaxDimensions(Landroid/content/pm/ActivityInfo;)V

    .line 1339
    return-void
.end method

.method private setLockTaskAuth(Lcom/android/server/wm/ActivityRecord;)V
    .registers 8
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2037
    const/4 v0, 0x1

    if-nez p1, :cond_6

    .line 2038
    iput v0, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    .line 2039
    return-void

    .line 2042
    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    .line 2043
    .local v1, "pkg":Ljava/lang/String;
    :goto_10
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v2

    .line 2044
    .local v2, "lockTaskController":Lcom/android/server/wm/LockTaskController;
    iget v3, p1, Lcom/android/server/wm/ActivityRecord;->lockTaskLaunchMode:I

    const/4 v4, 0x3

    if-eqz v3, :cond_39

    if-eq v3, v0, :cond_35

    const/4 v5, 0x2

    if-eq v3, v5, :cond_31

    if-eq v3, v4, :cond_23

    goto :goto_47

    .line 2059
    :cond_23
    iget v3, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/LockTaskController;->isPackageWhitelisted(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 2060
    move v0, v5

    goto :goto_2e

    :cond_2d
    nop

    :goto_2e
    iput v0, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    goto :goto_47

    .line 2055
    :cond_31
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    .line 2056
    goto :goto_47

    .line 2051
    :cond_35
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    .line 2052
    goto :goto_47

    .line 2046
    :cond_39
    iget v3, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/LockTaskController;->isPackageWhitelisted(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 2047
    move v0, v4

    goto :goto_44

    :cond_43
    nop

    :goto_44
    iput v0, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    .line 2048
    nop

    .line 2063
    :goto_47
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_LOCKTASK:Z

    if-eqz v0, :cond_6e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLockTaskAuth: task="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mLockTaskAuth="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2064
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->lockTaskAuthToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2063
    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    :cond_6e
    return-void
.end method

.method private setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/Task;)V
    .registers 6
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "origin"    # Lcom/android/server/wm/Task;

    .line 6022
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 6023
    .local v0, "topActivity":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_d

    :cond_c
    move-object v2, v1

    .line 6024
    .local v2, "leaf":Lcom/android/server/wm/Task;
    :goto_d
    if-nez v2, :cond_10

    .line 6025
    return-void

    .line 6027
    :cond_10
    if-eq v2, p0, :cond_16

    .line 6028
    invoke-direct {v2, p1, p2}, Lcom/android/server/wm/Task;->setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/Task;)V

    .line 6029
    return-void

    .line 6031
    :cond_16
    iput-object p1, p0, Lcom/android/server/wm/Task;->mMainWindowSizeChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 6032
    if-nez p1, :cond_1b

    goto :goto_1c

    :cond_1b
    move-object v1, p2

    :goto_1c
    iput-object v1, p0, Lcom/android/server/wm/Task;->mMainWindowSizeChangeTask:Lcom/android/server/wm/Task;

    .line 6033
    return-void
.end method

.method private setResizeModeFromBlocklist()V
    .registers 3

    .line 6512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setResizeModeFromBlocklist() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6513
    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 6514
    return-void
.end method

.method private static setTaskDescriptionFromActivityAboveRoot(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityManager$TaskDescription;)Z
    .registers 5
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "root"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "td"    # Landroid/app/ActivityManager$TaskDescription;

    .line 2178
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v0

    if-nez v0, :cond_77

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v0, :cond_77

    .line 2179
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 2180
    .local v0, "atd":Landroid/app/ActivityManager$TaskDescription;
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_19

    .line 2181
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setLabel(Ljava/lang/String;)V

    .line 2183
    :cond_19
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getRawIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-nez v1, :cond_26

    .line 2184
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getRawIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setIcon(Landroid/graphics/drawable/Icon;)V

    .line 2186
    :cond_26
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_33

    .line 2187
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setIconFilename(Ljava/lang/String;)V

    .line 2189
    :cond_33
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v1

    if-nez v1, :cond_40

    .line 2190
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setPrimaryColor(I)V

    .line 2192
    :cond_40
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v1

    if-nez v1, :cond_4d

    .line 2193
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColor(I)V

    .line 2195
    :cond_4d
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v1

    if-nez v1, :cond_62

    .line 2196
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setStatusBarColor(I)V

    .line 2197
    nop

    .line 2198
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getEnsureStatusBarContrastWhenTransparent()Z

    move-result v1

    .line 2197
    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setEnsureStatusBarContrastWhenTransparent(Z)V

    .line 2200
    :cond_62
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v1

    if-nez v1, :cond_77

    .line 2201
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setNavigationBarColor(I)V

    .line 2202
    nop

    .line 2203
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getEnsureNavigationBarContrastWhenTransparent()Z

    move-result v1

    .line 2202
    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setEnsureNavigationBarContrastWhenTransparent(Z)V

    .line 2209
    .end local v0    # "atd":Landroid/app/ActivityManager$TaskDescription;
    :cond_77
    if-ne p0, p1, :cond_7b

    const/4 v0, 0x1

    goto :goto_7c

    :cond_7b
    const/4 v0, 0x0

    :goto_7c
    return v0
.end method

.method private shouldSnapshotSplitTask(II)Z
    .registers 6
    .param p1, "prevWinMode"    # I
    .param p2, "newWinMode"    # I

    .line 2525
    const/4 v0, 0x0

    .line 2526
    .local v0, "isDismissingSplitTask":Z
    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isSplitWindowingMode(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_b

    if-ne p2, v2, :cond_b

    .line 2528
    const/4 v0, 0x1

    .line 2535
    :cond_b
    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeStandard()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 2536
    invoke-direct {p0, p0}, Lcom/android/server/wm/Task;->isInSkipClosingAppSnapshotTasks(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_21

    :cond_20
    const/4 v2, 0x0

    .line 2535
    :goto_21
    return v2
.end method

.method private shouldStartChangeTransition(II)Z
    .registers 7
    .param p1, "prevWinMode"    # I
    .param p2, "newWinMode"    # I

    .line 2630
    invoke-direct {p0}, Lcom/android/server/wm/Task;->isChangeTransitionBlockedByCommonPolicy()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 2631
    return v1

    .line 2645
    :cond_8
    const/4 v0, 0x5

    const/4 v2, 0x1

    if-ne p1, v0, :cond_e

    move v3, v2

    goto :goto_f

    :cond_e
    move v3, v1

    :goto_f
    if-ne p2, v0, :cond_13

    move v0, v2

    goto :goto_14

    :cond_13
    move v0, v1

    :goto_14
    if-eq v3, v0, :cond_17

    move v1, v2

    :cond_17
    return v1
.end method

.method private shouldStartResizeTransition(Landroid/graphics/Rect;)Z
    .registers 6
    .param p1, "prevBounds"    # Landroid/graphics/Rect;

    .line 6519
    invoke-direct {p0}, Lcom/android/server/wm/Task;->isChangeTransitionBlockedByCommonPolicy()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 6520
    return v1

    .line 6522
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayContent;->isInputMethodTargetTask(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 6523
    return v1

    .line 6525
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 6526
    .local v0, "taskBounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v2, v3, :cond_2b

    .line 6527
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eq v2, v3, :cond_2a

    goto :goto_2b

    .line 6537
    :cond_2a
    return v1

    .line 6535
    :cond_2b
    :goto_2b
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v1

    return v1
.end method

.method private shouldStartSplitChangeTransition(II)Z
    .registers 7
    .param p1, "prevWinMode"    # I
    .param p2, "newWinMode"    # I

    .line 6677
    invoke-direct {p0}, Lcom/android/server/wm/Task;->isChangeTransitionBlockedByCommonPolicy()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 6678
    return v1

    .line 6680
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isChangePinnedToSplitSceen()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 6681
    return v1

    .line 6683
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 6684
    .local v0, "displayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v0, :cond_2c

    iget-boolean v2, v0, Lcom/android/server/wm/TaskDisplayArea;->mSkipSplitScreenChangeTransition:Z

    if-nez v2, :cond_2c

    .line 6686
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitSecondaryTopTaskHomeOrRecents()Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_2c

    .line 6689
    :cond_20
    invoke-static {p1}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result v2

    .line 6690
    invoke-static {p2}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result v3

    if-eq v2, v3, :cond_2b

    const/4 v1, 0x1

    .line 6689
    :cond_2b
    return v1

    .line 6687
    :cond_2c
    :goto_2c
    return v1
.end method

.method private shouldSwitchPopOver(Landroid/content/res/Configuration;)Z
    .registers 7
    .param p1, "nextConfig"    # Landroid/content/res/Configuration;

    .line 6102
    const/4 v0, 0x0

    if-eqz p1, :cond_21

    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-nez v1, :cond_8

    goto :goto_21

    .line 6106
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v2, 0x258

    const/4 v3, 0x1

    if-lt v1, v2, :cond_15

    move v1, v3

    goto :goto_16

    :cond_15
    move v1, v0

    .line 6107
    .local v1, "isTablet":Z
    :goto_16
    iget v4, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-lt v4, v2, :cond_1c

    move v2, v3

    goto :goto_1d

    :cond_1c
    move v2, v0

    .line 6108
    .local v2, "willBeTablet":Z
    :goto_1d
    if-eq v1, v2, :cond_20

    move v0, v3

    :cond_20
    return v0

    .line 6104
    .end local v1    # "isTablet":Z
    .end local v2    # "willBeTablet":Z
    :cond_21
    :goto_21
    return v0
.end method

.method private supportsSplitScreenWindowingModeInner()Z
    .registers 3

    .line 2077
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->supportsSplitScreenWindowingMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsSplitScreenMultiWindow:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    if-nez v0, :cond_21

    .line 2080
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->isResizeable(Z)Z

    move-result v0

    if-eqz v0, :cond_23

    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 2081
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isPreserveOrientationMode(I)Z

    move-result v0

    if-nez v0, :cond_23

    :cond_21
    const/4 v1, 0x1

    goto :goto_24

    :cond_23
    nop

    .line 2077
    :goto_24
    return v1
.end method

.method private updateShadowsRadius(ZLandroid/view/SurfaceControl$Transaction;)V
    .registers 6
    .param p1, "taskIsFocused"    # Z
    .param p2, "pendingTransaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 5970
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mRenderShadowsInCompositor:Z

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 5971
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_29

    .line 5976
    :cond_13
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task;->getShadowRadius(Z)F

    move-result v0

    .line 5977
    .local v0, "newShadowRadius":F
    iget v1, p0, Lcom/android/server/wm/Task;->mShadowRadius:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_28

    .line 5978
    iput v0, p0, Lcom/android/server/wm/Task;->mShadowRadius:F

    .line 5979
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/Task;->mShadowRadius:F

    invoke-virtual {p2, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 5981
    :cond_28
    return-void

    .line 5973
    .end local v0    # "newShadowRadius":F
    :cond_29
    :goto_29
    return-void
.end method

.method private updateSupportScaledDensityLocked()V
    .registers 3

    .line 6114
    const/4 v0, 0x1

    .line 6115
    .local v0, "supportScaledDensity":Z
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mFreeformDensityDisabled:Z

    if-eqz v1, :cond_c

    .line 6116
    const/4 v0, 0x0

    .line 6118
    :cond_c
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mSupportScaledDensity:Z

    if-eq v1, v0, :cond_12

    .line 6119
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mSupportScaledDensity:Z

    .line 6121
    :cond_12
    return-void
.end method


# virtual methods
.method addChild(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1804
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 1805
    return-void
.end method

.method addChild(Lcom/android/server/wm/WindowContainer;I)V
    .registers 12
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "index"    # I

    .line 1747
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v0

    .line 1750
    .local v0, "hadChild":Z
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v1

    .line 1753
    .local v1, "activityType":I
    if-nez v0, :cond_11

    .line 1754
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiStarController:Lcom/android/server/wm/MultiStarController;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/MultiStarController;->updatePolicyIfNeeded(Lcom/android/server/wm/Task;)V

    .line 1758
    :cond_11
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/Task;->getAdjustedChildPosition(Lcom/android/server/wm/WindowContainer;I)I

    move-result p2

    .line 1759
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 1761
    sget-boolean v2, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2f

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/server/wm/ProtoLogGroup;

    const v5, 0x4f52761a

    const/4 v6, 0x0

    new-array v7, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static {v4, v5, v8, v6, v7}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1765
    .end local v2    # "protoLogParam0":Ljava/lang/String;
    :cond_2f
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz v2, :cond_47

    iget-boolean v2, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v2, :cond_47

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_47

    .line 1766
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    move-object v4, p1

    check-cast v4, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/TaskDisplayArea;->addStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V

    .line 1771
    :cond_47
    iget-object v2, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->updateUIDsPresentOnDisplay()V

    .line 1773
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 1774
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v2, :cond_53

    return-void

    .line 1776
    :cond_53
    iput-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    .line 1779
    if-nez v0, :cond_8c

    .line 1780
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v4

    if-nez v4, :cond_60

    .line 1785
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->setActivityType(I)V

    .line 1787
    :cond_60
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/wm/Task;->setActivityType(I)V

    .line 1788
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isPersistable()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    .line 1789
    iget v4, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iput v4, p0, Lcom/android/server/wm/Task;->mCallingUid:I

    .line 1790
    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    .line 1791
    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    .line 1793
    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->maxRecents:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1794
    invoke-static {}, Landroid/app/ActivityTaskManager;->getMaxAppRecentsLimitStatic()I

    move-result v4

    .line 1793
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/Task;->maxRecents:I

    goto :goto_8f

    .line 1797
    :cond_8c
    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityRecord;->setActivityType(I)V

    .line 1800
    :goto_8f
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateEffectiveIntent()V

    .line 1801
    return-void
.end method

.method adjustAspectRatioIfNeeded(Landroid/graphics/Rect;)V
    .registers 13
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 6212
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_db

    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 6213
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isPreserveOrientationMode(I)Z

    move-result v0

    if-eqz v0, :cond_db

    .line 6219
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v0, v1, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 6220
    .local v0, "landscape":Z
    :goto_1b
    iget v1, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    const/4 v2, 0x5

    const/4 v3, 0x4

    const-string v4, " caller="

    const-string v5, " bounds="

    const-string v6, " resizeMode="

    const-string v7, "adjustAspectRatioIfNeeded: task="

    const-string v8, "ActivityTaskManager"

    const v9, 0x3f99999a    # 1.2f

    if-ne v1, v2, :cond_81

    if-nez v0, :cond_81

    .line 6221
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 6222
    .local v1, "ratio":F
    cmpg-float v2, v1, v9

    if-gez v2, :cond_d9

    .line 6223
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v9

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 6224
    .local v2, "minHeight":I
    iget v9, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v2

    .line 6225
    .local v9, "adjusted":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " adjusted(bottom)="

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6227
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6225
    invoke-static {v8, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6228
    iput v9, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_d9

    .line 6230
    .end local v1    # "ratio":F
    .end local v2    # "minHeight":I
    .end local v9    # "adjusted":I
    :cond_81
    iget v1, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_d9

    if-eqz v0, :cond_d9

    .line 6231
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 6232
    .restart local v1    # "ratio":F
    cmpg-float v2, v1, v9

    if-gez v2, :cond_da

    .line 6233
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v9

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 6234
    .local v2, "minWidth":I
    iget v9, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v2

    .line 6235
    .restart local v9    # "adjusted":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " adjusted(right)="

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6237
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6235
    invoke-static {v8, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6238
    iput v9, p1, Landroid/graphics/Rect;->right:I

    goto :goto_da

    .line 6230
    .end local v1    # "ratio":F
    .end local v2    # "minWidth":I
    .end local v9    # "adjusted":I
    :cond_d9
    :goto_d9
    nop

    .line 6241
    :cond_da
    :goto_da
    return-void

    .line 6217
    .end local v0    # "landscape":Z
    :cond_db
    return-void
.end method

.method adjustBoundsForDisplayChangeIfNeeded(Lcom/android/server/wm/DisplayContent;)V
    .registers 8
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 3994
    if-nez p1, :cond_3

    .line 3995
    return-void

    .line 3997
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->matchParentBounds()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4000
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 4001
    return-void

    .line 4003
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    .line 4004
    .local v0, "displayId":I
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    .line 4005
    .local v1, "newRotation":I
    iget v2, p0, Lcom/android/server/wm/Task;->mLastRotationDisplayId:I

    if-eq v0, v2, :cond_21

    .line 4009
    iput v0, p0, Lcom/android/server/wm/Task;->mLastRotationDisplayId:I

    .line 4010
    iput v1, p0, Lcom/android/server/wm/Task;->mRotation:I

    .line 4011
    return-void

    .line 4014
    :cond_21
    iget v2, p0, Lcom/android/server/wm/Task;->mRotation:I

    if-ne v2, v1, :cond_26

    .line 4017
    return-void

    .line 4039
    :cond_26
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4041
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->canResizeTask()Z

    move-result v2

    if-nez v2, :cond_3f

    .line 4042
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 4043
    return-void

    .line 4046
    :cond_3f
    iget v2, p0, Lcom/android/server/wm/Task;->mRotation:I

    iget-object v3, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v1, v3}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    .line 4048
    iget v2, p0, Lcom/android/server/wm/Task;->mRotation:I

    .line 4049
    invoke-static {v2, v1}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_54

    .line 4064
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->adjustBoundsToAvoidConflictSystemBar(Landroid/graphics/Rect;)V

    .line 4068
    :cond_54
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    move-result v2

    if-eqz v2, :cond_68

    .line 4069
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->resizeTask(ILandroid/graphics/Rect;I)Z

    .line 4071
    :cond_68
    return-void
.end method

.method public adjustBoundsToAvoidConflictSystemBar(Landroid/graphics/Rect;)V
    .registers 13
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 4075
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_67

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_67

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_67

    .line 4079
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 4080
    .local v0, "parentConfig":Landroid/content/res/Configuration;
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 4081
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 4082
    .local v1, "parentBounds":Landroid/graphics/Rect;
    iget v2, v0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v2, v2

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v2, v3

    .line 4084
    .local v2, "density":F
    iget-object v3, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v3, :cond_50

    .line 4085
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 4086
    .local v3, "stableInsets":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v10

    .line 4087
    .local v10, "di":Landroid/view/DisplayInfo;
    iget-object v4, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v4

    iget v5, v10, Landroid/view/DisplayInfo;->rotation:I

    iget v6, v10, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v7, v10, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v8, v10, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    move-object v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/DisplayPolicy;->getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 4089
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 4091
    .end local v3    # "stableInsets":Landroid/graphics/Rect;
    .end local v10    # "di":Landroid/view/DisplayInfo;
    :cond_50
    const/high16 v3, 0x42680000    # 58.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    const/high16 v4, 0x42000000    # 32.0f

    mul-float/2addr v4, v2

    float-to-int v4, v4

    invoke-static {p1, v1, v3, v4}, Lcom/android/server/wm/Task;->fitWithinBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 4096
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    .line 4097
    .local v3, "offsetTop":I
    if-lez v3, :cond_66

    .line 4098
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 4100
    :cond_66
    return-void

    .line 4076
    .end local v0    # "parentConfig":Landroid/content/res/Configuration;
    .end local v1    # "parentBounds":Landroid/graphics/Rect;
    .end local v2    # "density":F
    .end local v3    # "offsetTop":I
    :cond_67
    :goto_67
    return-void
.end method

.method adjustFocusToNextFocusableTask(Ljava/lang/String;)Lcom/android/server/wm/ActivityStack;
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;

    .line 3492
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/Task;->adjustFocusToNextFocusableTask(Ljava/lang/String;ZZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method adjustFocusToNextFocusableTask(Ljava/lang/String;ZZ)Lcom/android/server/wm/ActivityStack;
    .registers 11
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "allowFocusSelf"    # Z
    .param p3, "moveDisplayToTop"    # Z

    .line 3527
    invoke-direct {p0, p2}, Lcom/android/server/wm/Task;->getNextFocusableTask(Z)Lcom/android/server/wm/Task;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityStack;

    .line 3528
    .local v0, "focusableTask":Lcom/android/server/wm/ActivityStack;
    if-nez v0, :cond_13

    .line 3529
    iget-object v1, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    move-object v2, p0

    check-cast v2, Lcom/android/server/wm/ActivityStack;

    xor-int/lit8 v3, p2, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/RootWindowContainer;->getNextFocusableStack(Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 3532
    :cond_13
    if-nez v0, :cond_17

    .line 3533
    const/4 v1, 0x0

    return-object v1

    .line 3549
    :cond_17
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    .line 3550
    .local v1, "rootTask":Lcom/android/server/wm/ActivityStack;
    if-nez p3, :cond_39

    .line 3554
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    .line 3555
    .local v2, "parent":Lcom/android/server/wm/WindowContainer;
    move-object v3, v0

    .line 3557
    .local v3, "next":Lcom/android/server/wm/WindowContainer;
    :cond_24
    const v4, 0x7fffffff

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 3558
    move-object v3, v2

    .line 3559
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    .line 3560
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_38

    if-nez v2, :cond_24

    .line 3561
    :cond_38
    return-object v1

    .line 3564
    .end local v2    # "parent":Lcom/android/server/wm/WindowContainer;
    .end local v3    # "next":Lcom/android/server/wm/WindowContainer;
    :cond_39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " adjustFocusToNextFocusableStack"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3565
    .local v2, "myReason":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 3566
    .local v3, "top":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v4

    if-eqz v4, :cond_62

    if-eqz v3, :cond_5a

    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v4, :cond_62

    .line 3569
    :cond_5a
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeActivityToTop(Ljava/lang/String;)V

    .line 3570
    return-object v1

    .line 3574
    :cond_62
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_86

    .line 3575
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->inFreeformWindowingMode()Z

    move-result v4

    .line 3576
    .local v4, "focusToFreeformStack":Z
    if-nez p2, :cond_86

    if-eqz v4, :cond_86

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v5

    if-eqz v5, :cond_86

    .line 3577
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-nez v5, :cond_86

    if-eq v0, p0, :cond_86

    .line 3578
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityStack;->setBoostStackLayerForAppTransition(Z)V

    .line 3585
    .end local v4    # "focusToFreeformStack":Z
    :cond_86
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 3587
    iget-object v4, v1, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_99

    .line 3588
    iget-object v4, p0, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStackSupervisor;->updateTopResumedActivityIfNeeded()V

    .line 3592
    iget-object v4, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v1, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4, v5, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 3594
    :cond_99
    return-object v1
.end method

.method adjustForMinimalTaskDimensions(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)V
    .registers 10
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "previousBounds"    # Landroid/graphics/Rect;
    .param p3, "parentConfig"    # Landroid/content/res/Configuration;

    .line 2230
    iget v0, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    .line 2231
    .local v0, "minWidth":I
    iget v1, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    .line 2235
    .local v1, "minHeight":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 2236
    iget-object v2, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v2, v2, Lcom/android/server/wm/RootWindowContainer;->mDefaultMinSizeOfResizeableTaskDp:I

    .line 2237
    .local v2, "defaultMinSizeDp":I
    iget v3, p3, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v3, v3

    const/high16 v4, 0x43200000    # 160.0f

    div-float/2addr v3, v4

    .line 2238
    .local v3, "density":F
    int-to-float v4, v2

    mul-float/2addr v4, v3

    float-to-int v4, v4

    .line 2240
    .local v4, "defaultMinSize":I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_1b

    .line 2241
    move v0, v4

    .line 2243
    :cond_1b
    if-ne v1, v5, :cond_1e

    .line 2244
    move v1, v4

    .line 2247
    .end local v2    # "defaultMinSizeDp":I
    .end local v3    # "density":F
    .end local v4    # "defaultMinSize":I
    :cond_1e
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 2250
    iget-object v2, p3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 2251
    .local v2, "parentBounds":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-lt v3, v0, :cond_37

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-lt v3, v1, :cond_37

    .line 2252
    return-void

    .line 2254
    :cond_37
    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2256
    .end local v2    # "parentBounds":Landroid/graphics/Rect;
    :cond_3a
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v0, v2, :cond_44

    move v2, v3

    goto :goto_45

    :cond_44
    move v2, v4

    .line 2257
    .local v2, "adjustWidth":Z
    :goto_45
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v1, v5, :cond_4c

    goto :goto_4d

    :cond_4c
    move v3, v4

    .line 2258
    .local v3, "adjustHeight":Z
    :goto_4d
    if-nez v2, :cond_52

    if-nez v3, :cond_52

    .line 2259
    return-void

    .line 2262
    :cond_52
    if-eqz v2, :cond_6b

    .line 2263
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_66

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p2, Landroid/graphics/Rect;->right:I

    if-ne v4, v5, :cond_66

    .line 2264
    iget v4, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v0

    iput v4, p1, Landroid/graphics/Rect;->left:I

    goto :goto_6b

    .line 2268
    :cond_66
    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v0

    iput v4, p1, Landroid/graphics/Rect;->right:I

    .line 2271
    :cond_6b
    :goto_6b
    if-eqz v3, :cond_84

    .line 2272
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7f

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    if-ne v4, v5, :cond_7f

    .line 2273
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v1

    iput v4, p1, Landroid/graphics/Rect;->top:I

    goto :goto_84

    .line 2277
    :cond_7f
    iget v4, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 2280
    :cond_84
    :goto_84
    return-void
.end method

.method protected applyAnimationUnchecked(Landroid/view/WindowManager$LayoutParams;ZIZLjava/util/ArrayList;)V
    .registers 16
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "enter"    # Z
    .param p3, "transit"    # I
    .param p4, "isVoiceInteraction"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowManager$LayoutParams;",
            "ZIZ",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)V"
        }
    .end annotation

    .line 4655
    .local p5, "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowContainer;>;"
    const/4 v0, 0x1

    .line 4656
    .local v0, "canUseRecentsAnimationController":Z
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4658
    const/4 v0, 0x0

    .line 4661
    :cond_8
    iget-object v1, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v1

    .line 4662
    .local v1, "control":Lcom/android/server/wm/RecentsAnimationController;
    if-eqz v1, :cond_4b

    if-eqz v0, :cond_4b

    .line 4665
    if-eqz p2, :cond_4e

    .line 4666
    sget-boolean v2, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v2, :cond_42

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam0":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam1":Ljava/lang/String;
    invoke-static {p3}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam2":Ljava/lang/String;
    sget-object v5, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v6, 0xc8fcb49

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v9, 0x1

    aput-object v3, v7, v9

    const/4 v9, 0x2

    aput-object v4, v7, v9

    const-string v9, "applyAnimationUnchecked, control: %s, task: %s, transit: %s"

    invoke-static {v5, v6, v8, v9, v7}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 4669
    .end local v2    # "protoLogParam0":Ljava/lang/String;
    .end local v3    # "protoLogParam1":Ljava/lang/String;
    .end local v4    # "protoLogParam2":Ljava/lang/String;
    :cond_42
    new-instance v2, Lcom/android/server/wm/-$$Lambda$Task$VRdyYSz0mCBN4pgcHJOSGmi8pCY;

    invoke-direct {v2, p5}, Lcom/android/server/wm/-$$Lambda$Task$VRdyYSz0mCBN4pgcHJOSGmi8pCY;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, p0, v2}, Lcom/android/server/wm/RecentsAnimationController;->addTaskToTargets(Lcom/android/server/wm/Task;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    goto :goto_4e

    .line 4681
    :cond_4b
    invoke-super/range {p0 .. p5}, Lcom/android/server/wm/WindowContainer;->applyAnimationUnchecked(Landroid/view/WindowManager$LayoutParams;ZIZLjava/util/ArrayList;)V

    .line 4683
    :cond_4e
    :goto_4e
    return-void
.end method

.method asTask()Lcom/android/server/wm/Task;
    .registers 1

    .line 4848
    return-object p0
.end method

.method canAffectSystemUiFlags()Z
    .registers 2

    .line 4593
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCanAffectSystemUiFlags:Z

    return v0
.end method

.method canBeLaunchedOnDisplay(I)Z
    .registers 5
    .param p1, "displayId"    # I

    .line 2092
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v1, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->canPlaceEntityOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method canCreateRemoteAnimationTarget()Z
    .registers 2

    .line 4343
    nop

    .line 4344
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4347
    const/4 v0, 0x0

    return v0

    .line 4350
    :cond_f
    const/4 v0, 0x1

    return v0
.end method

.method canMinimize()Z
    .registers 2

    .line 6582
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->supportsMinimizeState()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 6583
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 6584
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isUnderHomeStack()Z

    move-result v0

    if-nez v0, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    .line 6582
    :goto_2b
    return v0
.end method

.method cancelTaskWindowTransition()V
    .registers 3

    .line 4130
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 4131
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 4130
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 4133
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method cleanUpActivityReferences(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1549
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1550
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 1551
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/Task;->cleanUpActivityReferences(Lcom/android/server/wm/ActivityRecord;)V

    .line 1552
    return-void

    .line 1554
    :cond_14
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->removeTimeouts()V

    .line 1555
    iget-object v1, p0, Lcom/android/server/wm/Task;->mExitingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1557
    iget-object v1, p0, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    if-ne v1, p1, :cond_28

    .line 1558
    const-string v1, "cleanUpActivityReferences"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/Task;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 1560
    :cond_28
    iget-object v1, p0, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_30

    if-ne v1, p1, :cond_30

    .line 1561
    iput-object v2, p0, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1563
    :cond_30
    return-void
.end method

.method clearDexCompatInfo()V
    .registers 2

    .line 6394
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/Task;->mDexLaunchPolicy:I

    .line 6395
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mIsDexCompatEnabled:Z

    .line 6396
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mIsDexCompatAllowedFullscreen:Z

    .line 6397
    iput v0, p0, Lcom/android/server/wm/Task;->mDexCompatUiMode:I

    .line 6398
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Task;->mDexCompatCustomSize:Landroid/graphics/Point;

    .line 6399
    return-void
.end method

.method clearPreserveNonFloatingState()V
    .registers 2

    .line 4605
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mPreserveNonFloatingState:Z

    .line 4606
    return-void
.end method

.method clearRootProcess()V
    .registers 2

    .line 3416
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_a

    .line 3417
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowProcessController;->removeRecentTask(Lcom/android/server/wm/Task;)V

    .line 3418
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    .line 3420
    :cond_a
    return-void
.end method

.method computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "inOutConfig"    # Landroid/content/res/Configuration;
    .param p2, "parentConfig"    # Landroid/content/res/Configuration;

    .line 2933
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/server/wm/Task;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V

    .line 2935
    return-void
.end method

.method computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;)V
    .registers 5
    .param p1, "inOutConfig"    # Landroid/content/res/Configuration;
    .param p2, "parentConfig"    # Landroid/content/res/Configuration;
    .param p3, "overrideDisplayInfo"    # Landroid/view/DisplayInfo;

    .line 2922
    if-eqz p3, :cond_8

    .line 2924
    const/4 v0, 0x0

    iput v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 2925
    invoke-static {p1}, Lcom/android/server/wm/Task;->invalidateAppBoundsConfig(Landroid/content/res/Configuration;)V

    .line 2927
    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/Task;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V

    .line 2929
    return-void
.end method

.method computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V
    .registers 22
    .param p1, "inOutConfig"    # Landroid/content/res/Configuration;
    .param p2, "parentConfig"    # Landroid/content/res/Configuration;
    .param p3, "overrideDisplayInfo"    # Landroid/view/DisplayInfo;
    .param p4, "compatInsets"    # Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    .line 2959
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    iget-object v4, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v4

    .line 2960
    .local v4, "windowingMode":I
    if-nez v4, :cond_16

    .line 2961
    iget-object v5, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v4

    .line 2964
    :cond_16
    iget v5, v1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v5, v5

    .line 2965
    .local v5, "density":F
    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-nez v6, :cond_21

    .line 2966
    iget v6, v2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v5, v6

    .line 2968
    :cond_21
    const v6, 0x3bcccccd    # 0.00625f

    mul-float/2addr v5, v6

    .line 2972
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isDexMode()Z

    move-result v7

    if-nez v7, :cond_44

    .line 2973
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v7

    .line 2972
    invoke-static {v4, v7}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->needToUpdateDensity(II)Z

    move-result v7

    if-eqz v7, :cond_44

    .line 2974
    iget v7, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v8, v2, Landroid/content/res/Configuration;->densityDpi:I

    invoke-static {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getScaleDownDensity(II)I

    move-result v7

    .line 2976
    .local v7, "scaledDensityDpi":I
    if-lez v7, :cond_44

    .line 2977
    int-to-float v8, v7

    mul-float v5, v8, v6

    .line 2978
    iput v7, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 2988
    .end local v7    # "scaledDensityDpi":I
    :cond_44
    iget-object v6, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 2989
    .local v6, "parentBounds":Landroid/graphics/Rect;
    iget-object v7, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 2990
    .local v7, "resolvedBounds":Landroid/graphics/Rect;
    if-eqz v7, :cond_63

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_59

    goto :goto_63

    .line 2994
    :cond_59
    iget-object v8, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2995
    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v8

    .local v8, "insideParentBounds":Z
    goto :goto_69

    .line 2991
    .end local v8    # "insideParentBounds":Z
    :cond_63
    :goto_63
    iget-object v8, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2992
    const/4 v8, 0x1

    .line 3000
    .restart local v8    # "insideParentBounds":Z
    :goto_69
    const/4 v10, 0x0

    if-eqz v3, :cond_6e

    const/4 v11, 0x1

    goto :goto_6f

    :cond_6e
    move v11, v10

    .line 3002
    .local v11, "customContainerPolicy":Z
    :goto_6f
    iget-object v12, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v12}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v12

    .line 3003
    .local v12, "outAppBounds":Landroid/graphics/Rect;
    if-eqz v12, :cond_7d

    invoke-virtual {v12}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_b4

    .line 3005
    :cond_7d
    iget-object v13, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v14, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 3006
    iget-object v13, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v13}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v12

    .line 3008
    if-nez v11, :cond_b4

    const/4 v13, 0x5

    if-eq v4, v13, :cond_b4

    .line 3010
    if-eqz v8, :cond_98

    .line 3011
    iget-object v13, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v13}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v13

    .local v13, "containingAppBounds":Landroid/graphics/Rect;
    goto :goto_a9

    .line 3016
    .end local v13    # "containingAppBounds":Landroid/graphics/Rect;
    :cond_98
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v13

    .line 3017
    .local v13, "displayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v13, :cond_a7

    .line 3018
    invoke-virtual {v13}, Lcom/android/server/wm/TaskDisplayArea;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v14

    goto :goto_a8

    :cond_a7
    const/4 v14, 0x0

    :goto_a8
    move-object v13, v14

    .line 3020
    .local v13, "containingAppBounds":Landroid/graphics/Rect;
    :goto_a9
    if-eqz v13, :cond_b4

    invoke-virtual {v13}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_b4

    .line 3021
    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 3027
    .end local v13    # "containingAppBounds":Landroid/graphics/Rect;
    :cond_b4
    const/4 v13, 0x0

    .line 3029
    .local v13, "isDexCompatEnabled":Z
    if-eqz v13, :cond_c4

    .line 3030
    iget-object v10, v0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mDexCompatController:Lcom/android/server/wm/DexCompatController;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v14

    invoke-virtual {v10, v14}, Lcom/android/server/wm/DexCompatController;->getDecorCaptionHeight(I)I

    move-result v10

    goto :goto_c5

    :cond_c4
    nop

    .line 3033
    .local v10, "captionHeight":I
    :goto_c5
    iget v14, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v14, :cond_d2

    iget v14, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-nez v14, :cond_ce

    goto :goto_d2

    :cond_ce
    move-object/from16 v16, v6

    goto/16 :goto_20d

    .line 3035
    :cond_d2
    :goto_d2
    if-nez v11, :cond_ec

    invoke-static {v4}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v14

    if-eqz v14, :cond_ec

    .line 3036
    iget-object v14, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    iget-object v15, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3037
    iget-object v14, v0, Lcom/android/server/wm/Task;->mTmpStableBounds:Landroid/graphics/Rect;

    iget-object v15, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v16, v6

    goto/16 :goto_162

    .line 3045
    :cond_ec
    if-nez v11, :cond_114

    if-nez p3, :cond_fa

    .line 3046
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v14

    if-eqz v14, :cond_f7

    goto :goto_fa

    :cond_f7
    move-object/from16 v16, v6

    goto :goto_116

    .line 3047
    :cond_fa
    :goto_fa
    if-eqz p3, :cond_ff

    .line 3048
    move-object/from16 v14, p3

    goto :goto_107

    .line 3049
    :cond_ff
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v14

    :goto_107
    nop

    .line 3055
    .local v14, "di":Landroid/view/DisplayInfo;
    iget-object v15, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    iget-object v9, v0, Lcom/android/server/wm/Task;->mTmpStableBounds:Landroid/graphics/Rect;

    move-object/from16 v16, v6

    .end local v6    # "parentBounds":Landroid/graphics/Rect;
    .local v16, "parentBounds":Landroid/graphics/Rect;
    iget-object v6, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v15, v9, v6, v14}, Lcom/android/server/wm/Task;->calculateInsetFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;)V

    .line 3056
    .end local v14    # "di":Landroid/view/DisplayInfo;
    goto :goto_162

    .line 3045
    .end local v16    # "parentBounds":Landroid/graphics/Rect;
    .restart local v6    # "parentBounds":Landroid/graphics/Rect;
    :cond_114
    move-object/from16 v16, v6

    .line 3059
    .end local v6    # "parentBounds":Landroid/graphics/Rect;
    .restart local v16    # "parentBounds":Landroid/graphics/Rect;
    :goto_116
    iget-object v6, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v6

    .line 3060
    .local v6, "rotation":I
    const/4 v9, -0x1

    if-ne v6, v9, :cond_125

    .line 3061
    iget-object v14, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v14}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v6

    .line 3063
    :cond_125
    if-eq v6, v9, :cond_158

    if-eqz v11, :cond_158

    .line 3064
    iget-object v9, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    iget-object v14, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v9, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3065
    iget-object v9, v0, Lcom/android/server/wm/Task;->mTmpStableBounds:Landroid/graphics/Rect;

    iget-object v14, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v9, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3066
    iget-object v9, v0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v9, v6}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->getBoundsByRotation(Landroid/graphics/Rect;I)V

    .line 3067
    iget-object v9, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    iget-object v14, v0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v15, v3, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v15, v15, v6

    invoke-static {v9, v14, v15}, Lcom/android/server/wm/Task;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3069
    iget-object v9, v0, Lcom/android/server/wm/Task;->mTmpStableBounds:Landroid/graphics/Rect;

    iget-object v14, v0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v15, v3, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aget-object v15, v15, v6

    invoke-static {v9, v14, v15}, Lcom/android/server/wm/Task;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3071
    iget-object v9, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v12, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_162

    .line 3074
    :cond_158
    iget-object v9, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v9, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3075
    iget-object v9, v0, Lcom/android/server/wm/Task;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v9, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3086
    .end local v6    # "rotation":I
    :goto_162
    iget v6, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-nez v6, :cond_17d

    .line 3087
    iget-object v6, v0, Lcom/android/server/wm/Task;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    float-to-int v6, v6

    .line 3088
    .local v6, "overrideScreenWidthDp":I
    if-eqz v8, :cond_17a

    if-nez v11, :cond_17a

    .line 3089
    iget v9, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto :goto_17b

    .line 3090
    :cond_17a
    move v9, v6

    :goto_17b
    iput v9, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 3092
    .end local v6    # "overrideScreenWidthDp":I
    :cond_17d
    iget v6, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-nez v6, :cond_198

    .line 3093
    iget-object v6, v0, Lcom/android/server/wm/Task;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    float-to-int v6, v6

    .line 3094
    .local v6, "overrideScreenHeightDp":I
    if-eqz v8, :cond_195

    if-nez v11, :cond_195

    .line 3095
    iget v9, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto :goto_196

    .line 3096
    :cond_195
    move v9, v6

    :goto_196
    iput v9, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 3099
    .end local v6    # "overrideScreenHeightDp":I
    :cond_198
    iget v6, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-nez v6, :cond_20d

    .line 3101
    invoke-static {v4}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v6

    if-eqz v6, :cond_1d1

    .line 3104
    if-eqz v13, :cond_1bb

    .line 3105
    iget-object v6, v0, Lcom/android/server/wm/Task;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 3106
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v9, v0, Lcom/android/server/wm/Task;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 3107
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    sub-int/2addr v9, v10

    .line 3106
    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    float-to-int v6, v6

    iput v6, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    goto :goto_20d

    .line 3110
    :cond_1bb
    iget-object v6, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    .line 3111
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v9, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    float-to-int v6, v6

    iput v6, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    goto :goto_20d

    .line 3114
    :cond_1d1
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->FW_POP_OVER:Z

    if-eqz v6, :cond_1f1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/Task;->hasPopOverChild()Z

    move-result v6

    if-eqz v6, :cond_1f1

    .line 3115
    iget-object v6, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    .line 3116
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v9, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    float-to-int v6, v6

    iput v6, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    goto :goto_20d

    .line 3117
    :cond_1f1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isNonOrganizedHomeOrRecentsTask()Z

    move-result v6

    if-eqz v6, :cond_20d

    iget-object v6, v0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 3118
    invoke-virtual {v6}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v6

    if-eqz v6, :cond_20d

    .line 3119
    iget-object v6, v0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v6}, Lcom/android/server/wm/RootWindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v6, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 3126
    :cond_20d
    :goto_20d
    iget v6, v1, Landroid/content/res/Configuration;->orientation:I

    if-nez v6, :cond_21c

    .line 3127
    iget v6, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v9, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-gt v6, v9, :cond_219

    .line 3128
    const/4 v9, 0x1

    goto :goto_21a

    :cond_219
    const/4 v9, 0x2

    :goto_21a
    iput v9, v1, Landroid/content/res/Configuration;->orientation:I

    .line 3130
    :cond_21c
    iget v6, v1, Landroid/content/res/Configuration;->screenLayout:I

    if-nez v6, :cond_26d

    .line 3135
    iget-object v6, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    float-to-int v6, v6

    .line 3137
    .local v6, "compatScreenWidthDp":I
    iget-object v9, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v5

    float-to-int v9, v9

    .line 3139
    .local v9, "compatScreenHeightDp":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v14

    if-eqz v14, :cond_244

    .line 3142
    iget v14, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v14, :cond_23e

    .line 3143
    iget v6, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 3145
    :cond_23e
    iget v14, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v14, :cond_244

    .line 3146
    iget v9, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 3150
    :cond_244
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isNonOrganizedHomeOrRecentsTask()Z

    move-result v14

    if-eqz v14, :cond_265

    iget-object v14, v0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 3151
    invoke-virtual {v14}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v14

    if-eqz v14, :cond_265

    .line 3152
    iget-object v14, v0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v14}, Lcom/android/server/wm/RootWindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v14, v14, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v14, v6, v9}, Lcom/android/server/wm/Task;->computeScreenLayoutOverride(III)I

    move-result v14

    iput v14, v1, Landroid/content/res/Configuration;->screenLayout:I

    goto :goto_26d

    .line 3157
    :cond_265
    iget v14, v2, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v14, v6, v9}, Lcom/android/server/wm/Task;->computeScreenLayoutOverride(III)I

    move-result v14

    iput v14, v1, Landroid/content/res/Configuration;->screenLayout:I

    .line 3161
    .end local v6    # "compatScreenWidthDp":I
    .end local v9    # "compatScreenHeightDp":I
    :cond_26d
    :goto_26d
    return-void
.end method

.method computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V
    .registers 5
    .param p1, "inOutConfig"    # Landroid/content/res/Configuration;
    .param p2, "parentConfig"    # Landroid/content/res/Configuration;
    .param p3, "compatInsets"    # Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    .line 2940
    if-eqz p3, :cond_5

    .line 2942
    invoke-static {p1}, Lcom/android/server/wm/Task;->invalidateAppBoundsConfig(Landroid/content/res/Configuration;)V

    .line 2944
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/wm/Task;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V

    .line 2946
    return-void
.end method

.method computeFullscreenBounds(Landroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;I)V
    .registers 15
    .param p1, "outBounds"    # Landroid/graphics/Rect;
    .param p2, "refActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "parentBounds"    # Landroid/graphics/Rect;
    .param p4, "parentOrientation"    # I

    .line 3291
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 3292
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->handlesOrientationChangeFromDescendant()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3293
    return-void

    .line 3295
    :cond_a
    if-nez p2, :cond_11

    .line 3299
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    .line 3304
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 3306
    .local v0, "overrideOrientation":I
    if-nez v0, :cond_21

    if-nez p2, :cond_1c

    goto :goto_21

    .line 3307
    :cond_1c
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getRequestedConfigurationOrientation()I

    move-result v1

    goto :goto_22

    :cond_21
    :goto_21
    move v1, v0

    .line 3308
    .local v1, "forcedOrientation":I
    :goto_22
    if-eqz v1, :cond_5c

    if-eq v1, p4, :cond_5c

    .line 3313
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 3314
    .local v2, "parentWidth":I
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 3315
    .local v3, "parentHeight":I
    int-to-float v4, v3

    int-to-float v5, v2

    div-float/2addr v4, v5

    .line 3316
    .local v4, "aspect":F
    const/4 v5, 0x2

    if-ne v1, v5, :cond_48

    .line 3317
    int-to-float v5, v2

    div-float/2addr v5, v4

    float-to-int v5, v5

    .line 3318
    .local v5, "height":I
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    div-int/lit8 v7, v5, 0x2

    sub-int/2addr v6, v7

    .line 3319
    .local v6, "top":I
    iget v7, p3, Landroid/graphics/Rect;->left:I

    iget v8, p3, Landroid/graphics/Rect;->right:I

    add-int v9, v6, v5

    invoke-virtual {p1, v7, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 3320
    .end local v5    # "height":I
    .end local v6    # "top":I
    goto :goto_5b

    .line 3321
    :cond_48
    int-to-float v5, v3

    mul-float/2addr v5, v4

    float-to-int v5, v5

    .line 3322
    .local v5, "width":I
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    div-int/lit8 v7, v5, 0x2

    sub-int/2addr v6, v7

    .line 3323
    .local v6, "left":I
    iget v7, p3, Landroid/graphics/Rect;->top:I

    add-int v8, v6, v5

    iget v9, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 3325
    .end local v5    # "width":I
    .end local v6    # "left":I
    :goto_5b
    return-void

    .line 3310
    .end local v2    # "parentWidth":I
    .end local v3    # "parentHeight":I
    .end local v4    # "aspect":F
    :cond_5c
    return-void
.end method

.method createRemoteAnimationTarget(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;)Landroid/view/RemoteAnimationTarget;
    .registers 4
    .param p1, "record"    # Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    .line 4336
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 4337
    .local v0, "activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityRecord;->createRemoteAnimationTarget(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;)Landroid/view/RemoteAnimationTarget;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method

.method cropWindowsToStackBounds()Z
    .registers 4

    .line 3864
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeRecents()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 3867
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3869
    .local v0, "rootTask":Lcom/android/server/wm/Task;
    iget-boolean v1, v0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v1, :cond_19

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_1a

    :cond_19
    move-object v1, v0

    .line 3870
    .local v1, "topNonOrgTask":Lcom/android/server/wm/Task;
    :goto_1a
    if-eq p0, v1, :cond_28

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-eqz v2, :cond_23

    goto :goto_28

    .line 3874
    .end local v0    # "rootTask":Lcom/android/server/wm/Task;
    .end local v1    # "topNonOrgTask":Lcom/android/server/wm/Task;
    :cond_23
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    return v0

    .line 3871
    .restart local v0    # "rootTask":Lcom/android/server/wm/Task;
    .restart local v1    # "topNonOrgTask":Lcom/android/server/wm/Task;
    :cond_28
    :goto_28
    const/4 v2, 0x0

    return v2
.end method

.method dontAnimateDimExit()V
    .registers 2

    .line 4597
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->dontAnimateExit()V

    .line 4598
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 5121
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "userId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5122
    const-string v0, " effectiveUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 5123
    const-string v0, " mCallingUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mCallingUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 5124
    const-string v0, " mUserSetupComplete="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 5125
    const-string v0, " mCallingPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5126
    const-string v0, " mCallingFeatureId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5127
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_70

    .line 5128
    :cond_48
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "affinity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5129
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    if-eqz v0, :cond_66

    iget-object v1, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    goto :goto_66

    .line 5132
    :cond_62
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_70

    .line 5130
    :cond_66
    :goto_66
    const-string v0, " root="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5135
    :cond_70
    :goto_70
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    if-eqz v0, :cond_82

    .line 5136
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "windowLayoutAffinity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5138
    :cond_82
    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v0, :cond_8a

    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    if-eqz v0, :cond_b1

    .line 5139
    :cond_8a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "VOICE: session=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5140
    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5141
    const-string v0, " interactor=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5142
    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5144
    :cond_b1
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    const/16 v1, 0x7d

    const/16 v2, 0x80

    if-eqz v0, :cond_db

    .line 5145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5146
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "intent={"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5147
    iget-object v3, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 5148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5151
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_db
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_100

    .line 5152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5153
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "affinityIntent={"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5154
    iget-object v3, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 5155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5158
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_100
    iget-object v0, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_116

    .line 5159
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "origActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5160
    iget-object v0, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5162
    :cond_116
    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_12c

    .line 5163
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mActivityComponent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5164
    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5166
    :cond_12c
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    if-nez v0, :cond_13a

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    if-nez v0, :cond_13a

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeStandard()Z

    move-result v0

    if-nez v0, :cond_15d

    .line 5167
    :cond_13a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "autoRemoveRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 5168
    const-string v0, " isPersistable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 5169
    const-string v0, " activityType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 5171
    :cond_15d
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->rootWasReset:Z

    if-nez v0, :cond_16e

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    if-nez v0, :cond_16e

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    if-nez v0, :cond_16e

    iget v0, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19c

    .line 5173
    :cond_16e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "rootWasReset="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->rootWasReset:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 5174
    const-string v0, " mNeverRelinquishIdentity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 5175
    const-string v0, " mReuseTask="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 5176
    const-string v0, " mLockTaskAuth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->lockTaskAuthToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5178
    :cond_19c
    iget v0, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v0, v1, :cond_1b3

    iget v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1b3

    iget-object v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-nez v0, :cond_1b3

    iget v0, p0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    if-ne v0, v1, :cond_1b3

    iget-object v0, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_20a

    .line 5181
    :cond_1b3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "affiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5182
    const-string v0, " prevAffiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5183
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5184
    iget-object v1, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    const-string/jumbo v2, "null"

    if-nez v1, :cond_1da

    .line 5185
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1e5

    .line 5187
    :cond_1da
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5189
    :goto_1e5
    const-string v1, ") nextAffiliation="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 5190
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5191
    iget-object v0, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-nez v0, :cond_1fa

    .line 5192
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_205

    .line 5194
    :cond_1fa
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5196
    :goto_205
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5198
    :cond_20a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Activities="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5199
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->askedCompatMode:Z

    if-eqz v0, :cond_223

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v0, :cond_223

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isAvailable:Z

    if-nez v0, :cond_244

    .line 5200
    :cond_223
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "askedCompatMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->askedCompatMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 5201
    const-string v0, " inRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->inRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 5202
    const-string v0, " isAvailable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isAvailable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 5204
    :cond_244
    iget-object v0, p0, Lcom/android/server/wm/Task;->lastDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_256

    .line 5205
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "lastDescription="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->lastDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5207
    :cond_256
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_268

    .line 5208
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRootProcess="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5210
    :cond_268
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " stackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5211
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHasBeenVisible="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getHasBeenVisible()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 5212
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mResizeMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5213
    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->resizeModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5214
    const-string v0, " mSupportsPictureInPicture="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 5215
    const-string v0, " isResizeable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 5216
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "lastActiveTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/Task;->lastActiveTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 5217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (inactive for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getInactiveDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5221
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "lastGainFocusTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/Task;->lastGainFocusTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5223
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DEDICATED_MEMORY:Z

    if-eqz v0, :cond_352

    .line 5224
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    if-eqz v0, :cond_32b

    .line 5225
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5226
    const-string v0, "dedicated=true"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5228
    :cond_32b
    iget-object v0, p0, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    if-eqz v0, :cond_347

    .line 5229
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    if-nez v0, :cond_337

    .line 5230
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_33c

    .line 5232
    :cond_337
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5234
    :goto_33c
    const-string/jumbo v0, "hostProcess="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5235
    iget-object v0, p0, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5237
    :cond_347
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    if-nez v0, :cond_34f

    iget-object v0, p0, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    if-eqz v0, :cond_352

    .line 5238
    :cond_34f
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5258
    :cond_352
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mIsNotchOverlap:Z

    const-string v1, " }"

    if-nez v0, :cond_35c

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mIsNotchNever:Z

    if-eqz v0, :cond_379

    .line 5259
    :cond_35c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5260
    const-string v0, "NotchControlPolicy={"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5261
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mIsNotchOverlap:Z

    if-eqz v0, :cond_36d

    .line 5262
    const-string v0, " Overlap"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5264
    :cond_36d
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mIsNotchNever:Z

    if-eqz v0, :cond_376

    .line 5265
    const-string v0, " Never"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5267
    :cond_376
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5269
    :cond_379
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCanRotationToLandscape:Z

    if-nez v0, :cond_389

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCanRotationToPortrait:Z

    if-nez v0, :cond_389

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCanRotationToReversePortrait:Z

    if-nez v0, :cond_389

    iget v0, p0, Lcom/android/server/wm/Task;->mForcedOrientation:I

    if-eqz v0, :cond_3ea

    .line 5272
    :cond_389
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5273
    const-string v0, "OrientationControlPolicy={"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5274
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCanRotationToLandscape:Z

    if-eqz v0, :cond_39a

    .line 5275
    const-string v0, " Landscape"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5277
    :cond_39a
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCanRotationToPortrait:Z

    if-eqz v0, :cond_3a3

    .line 5278
    const-string v0, " Portrait"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5280
    :cond_3a3
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCanRotationToReversePortrait:Z

    if-eqz v0, :cond_3ac

    .line 5281
    const-string v0, " ReversePortrait"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5283
    :cond_3ac
    iget v0, p0, Lcom/android/server/wm/Task;->mForcedOrientation:I

    if-eqz v0, :cond_3c8

    .line 5284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ForcedOrientation="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getForcedOrientation()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5286
    :cond_3c8
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTISTAR_ORIENTATION_CONTROL_WITH_FIT_TO_SHORT_EDGE:Z

    if-eqz v0, :cond_3e7

    .line 5287
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCanFitToShortSideLandscape:Z

    if-eqz v0, :cond_3d5

    .line 5288
    const-string v0, " CanFitToShortSide(L)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5290
    :cond_3d5
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCanFitToShortSidePortrait:Z

    if-eqz v0, :cond_3de

    .line 5291
    const-string v0, " CanFitToShortSide(P)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5293
    :cond_3de
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mFitToShortSideEnabled:Z

    if-eqz v0, :cond_3e7

    .line 5294
    const-string v0, " FitToShortSideEnabled"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5297
    :cond_3e7
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5325
    :cond_3ea
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_POP_OVER:Z

    if-eqz v0, :cond_400

    .line 5326
    iget v0, p0, Lcom/android/server/wm/Task;->mPopOverChildCnt:I

    if-eqz v0, :cond_400

    .line 5327
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPopOverChildCnt="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mPopOverChildCnt:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 5331
    :cond_400
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .line 4687
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 4688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4690
    .local v0, "doublePrefix":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_3b
    if-ltz v1, :cond_68

    .line 4691
    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 4692
    .local v2, "child":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "* "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4695
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_65

    .line 4696
    invoke-virtual {v2, p1, v0, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 4690
    .end local v2    # "child":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    :cond_65
    add-int/lit8 v1, v1, -0x1

    goto :goto_3b

    .line 4699
    .end local v1    # "i":I
    :cond_68
    return-void
.end method

.method fillTaskInfo(Landroid/app/TaskInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/app/TaskInfo;

    .line 4707
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;Z)V

    .line 4708
    return-void
.end method

.method fillTaskInfo(Landroid/app/TaskInfo;Z)V
    .registers 11
    .param p1, "info"    # Landroid/app/TaskInfo;
    .param p2, "stripExtras"    # Z

    .line 4714
    iget-object v0, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->getNumRunningActivities(Lcom/android/server/wm/Task$TaskActivitiesReport;)V

    .line 4715
    iget v0, p0, Lcom/android/server/wm/Task;->mUserId:I

    iput v0, p1, Landroid/app/TaskInfo;->userId:I

    .line 4716
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v0

    iput v0, p1, Landroid/app/TaskInfo;->stackId:I

    .line 4717
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    iput v0, p1, Landroid/app/TaskInfo;->taskId:I

    .line 4718
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v0

    iput v0, p1, Landroid/app/TaskInfo;->displayId:I

    .line 4719
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    move v0, v1

    :goto_23
    iput-boolean v0, p1, Landroid/app/TaskInfo;->isRunning:Z

    .line 4720
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    .line 4723
    .local v0, "baseIntent":Landroid/content/Intent;
    if-nez v0, :cond_2d

    move v2, v1

    goto :goto_31

    :cond_2d
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v2

    .line 4724
    .local v2, "baseIntentFlags":I
    :goto_31
    if-nez v0, :cond_39

    .line 4725
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    goto :goto_45

    .line 4726
    :cond_39
    if-eqz p2, :cond_40

    invoke-virtual {v0}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v3

    goto :goto_45

    :cond_40
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    :goto_45
    iput-object v3, p1, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    .line 4727
    iget-object v3, p1, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4728
    iget-object v3, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v3, v3, Lcom/android/server/wm/Task$TaskActivitiesReport;->base:Lcom/android/server/wm/ActivityRecord;

    const/4 v4, 0x0

    if-eqz v3, :cond_5e

    .line 4729
    iget-object v3, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v3, v3, Lcom/android/server/wm/Task$TaskActivitiesReport;->base:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    goto :goto_5f

    .line 4730
    :cond_5e
    move-object v3, v4

    :goto_5f
    iput-object v3, p1, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 4731
    iget-object v3, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v3, v3, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_6e

    .line 4732
    iget-object v3, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v3, v3, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    goto :goto_6f

    .line 4733
    :cond_6e
    move-object v3, v4

    :goto_6f
    iput-object v3, p1, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 4734
    iget-object v3, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    iput-object v3, p1, Landroid/app/TaskInfo;->origActivity:Landroid/content/ComponentName;

    .line 4735
    iget-object v3, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    iput-object v3, p1, Landroid/app/TaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 4736
    iget-object v3, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget v3, v3, Lcom/android/server/wm/Task$TaskActivitiesReport;->numActivities:I

    iput v3, p1, Landroid/app/TaskInfo;->numActivities:I

    .line 4737
    iget-wide v5, p0, Lcom/android/server/wm/Task;->lastActiveTime:J

    iput-wide v5, p1, Landroid/app/TaskInfo;->lastActiveTime:J

    .line 4738
    new-instance v3, Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/app/ActivityManager$TaskDescription;-><init>(Landroid/app/ActivityManager$TaskDescription;)V

    iput-object v3, p1, Landroid/app/TaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 4739
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->supportsSplitScreenWindowingMode()Z

    move-result v3

    iput-boolean v3, p1, Landroid/app/TaskInfo;->supportsSplitScreenMultiWindow:Z

    .line 4740
    iget-object v3, p1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 4741
    iget-object v3, p0, Lcom/android/server/wm/Task;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v3

    iput-object v3, p1, Landroid/app/TaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 4745
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 4746
    .local v3, "top":Lcom/android/server/wm/Task;
    if-eqz v3, :cond_ae

    iget v5, v3, Lcom/android/server/wm/Task;->mResizeMode:I

    goto :goto_b0

    :cond_ae
    iget v5, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    :goto_b0
    iput v5, p1, Landroid/app/TaskInfo;->resizeMode:I

    .line 4747
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v5

    iput v5, p1, Landroid/app/TaskInfo;->topActivityType:I

    .line 4748
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v5

    iput-boolean v5, p1, Landroid/app/TaskInfo;->isResizeable:Z

    .line 4750
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 4751
    .local v5, "rootActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_d2

    iget-object v6, v5, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v6}, Landroid/app/PictureInPictureParams;->empty()Z

    move-result v6

    if-eqz v6, :cond_cd

    goto :goto_d2

    .line 4754
    :cond_cd
    iget-object v6, v5, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    iput-object v6, p1, Landroid/app/TaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    goto :goto_d4

    .line 4752
    :cond_d2
    :goto_d2
    iput-object v4, p1, Landroid/app/TaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 4756
    :goto_d4
    iget-object v6, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v6, v6, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    if-eqz v6, :cond_e1

    .line 4757
    iget-object v4, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v4, v4, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    goto :goto_e2

    .line 4758
    :cond_e1
    nop

    :goto_e2
    iput-object v4, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 4761
    nop

    .line 4762
    if-eqz v3, :cond_ea

    iget-boolean v4, v3, Lcom/android/server/wm/Task;->mIsLaunchHomeActivity:Z

    goto :goto_ec

    :cond_ea
    iget-boolean v4, p0, Lcom/android/server/wm/Task;->mIsLaunchHomeActivity:Z

    :goto_ec
    iput-boolean v4, p1, Landroid/app/TaskInfo;->topLaunchHomeActivity:Z

    .line 4764
    if-eqz v3, :cond_ff

    .line 4765
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_ff

    .line 4766
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inSplitScreenPrimaryWindowingMode()Z

    move-result v4

    if-nez v4, :cond_fd

    goto :goto_ff

    .line 4769
    :cond_fd
    iput v1, p1, Landroid/app/TaskInfo;->topActivityType:I

    .line 4771
    :cond_ff
    :goto_ff
    iget v1, p0, Lcom/android/server/wm/Task;->mLaunchSplitWindowingMode:I

    if-eqz v1, :cond_105

    .line 4773
    iput v1, p1, Landroid/app/TaskInfo;->launchSplitWindowingMode:I

    .line 4776
    :cond_105
    iget-wide v6, p0, Lcom/android/server/wm/Task;->lastGainFocusTime:J

    iput-wide v6, p1, Landroid/app/TaskInfo;->lastGainFocusTime:J

    .line 4788
    iget v1, p1, Landroid/app/TaskInfo;->topActivityType:I

    if-nez v1, :cond_11a

    .line 4789
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 4790
    .local v1, "realTop":Lcom/android/server/wm/ActivityRecord;
    const/4 v4, 0x0

    .line 4791
    .local v4, "realTopActivityType":I
    if-eqz v1, :cond_118

    .line 4792
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v4

    .line 4794
    :cond_118
    iput v4, p1, Landroid/app/TaskInfo;->availableTopActivityType:I

    .line 4796
    .end local v1    # "realTop":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "realTopActivityType":I
    :cond_11a
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isInPairTask()Z

    move-result v1

    if-eqz v1, :cond_126

    .line 4797
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRecentPairWindowingMode()I

    move-result v1

    iput v1, p1, Landroid/app/TaskInfo;->pairWindowingMode:I

    .line 4800
    :cond_126
    return-void
.end method

.method fillTopSplitLayoutInfo(Lcom/android/server/wm/Task;Landroid/app/TaskInfo;)V
    .registers 7
    .param p1, "topTask"    # Lcom/android/server/wm/Task;
    .param p2, "info"    # Landroid/app/TaskInfo;

    .line 4804
    const/4 v0, -0x1

    iput v0, p2, Landroid/app/TaskInfo;->topDockSide:I

    .line 4805
    const/4 v0, 0x0

    iput v0, p2, Landroid/app/TaskInfo;->topSplitRatio:F

    .line 4807
    if-eqz p1, :cond_4f

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isInPairTask()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_4f

    .line 4809
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getPairTask()Lcom/android/server/wm/PairTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/PairTask;->getSnapshot(ZZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v0

    .line 4811
    .local v0, "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    if-nez v0, :cond_1b

    return-void

    .line 4813
    :cond_1b
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshotBoundsByWindowingMode()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x3

    .line 4814
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4813
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 4815
    .local v1, "primary":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshotBoundsByWindowingMode()Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x4

    .line 4816
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4815
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 4817
    .local v2, "display":Landroid/graphics/Rect;
    if-eqz v1, :cond_4e

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4e

    if-eqz v2, :cond_4e

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4a

    goto :goto_4e

    .line 4819
    :cond_4a
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 4829
    return-void

    .line 4817
    :cond_4e
    :goto_4e
    return-void

    .line 4807
    .end local v0    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    .end local v1    # "primary":Landroid/graphics/Rect;
    .end local v2    # "display":Landroid/graphics/Rect;
    :cond_4f
    :goto_4f
    return-void
.end method

.method fillsParent()Z
    .registers 2

    .line 4511
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isNonOrganizedHomeOrRecentsTask()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4514
    const/4 v0, 0x1

    return v0

    .line 4517
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->matchParentBounds()Z

    move-result v0

    return v0
.end method

.method findActivityInHistory(Landroid/content/ComponentName;)Lcom/android/server/wm/ActivityRecord;
    .registers 4
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 2129
    sget-object v0, Lcom/android/server/wm/-$$Lambda$Task$BP51Xfr33NBfsJ4rKO04RomX2Tg;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$BP51Xfr33NBfsJ4rKO04RomX2Tg;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 2130
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 2129
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    .line 2131
    .local v0, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2132
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 2133
    return-object v1
.end method

.method forAllLeafTasks(Ljava/util/function/Consumer;Z)V
    .registers 7
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/Task;",
            ">;Z)V"
        }
    .end annotation

    .line 4522
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/Task;>;"
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 4523
    .local v0, "count":I
    const/4 v1, 0x1

    .line 4524
    .local v1, "isLeafTask":Z
    if-eqz p2, :cond_23

    .line 4525
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_b
    if-ltz v2, :cond_22

    .line 4526
    iget-object v3, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 4527
    .local v3, "child":Lcom/android/server/wm/Task;
    if-eqz v3, :cond_1f

    .line 4528
    const/4 v1, 0x0

    .line 4529
    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 4525
    .end local v3    # "child":Lcom/android/server/wm/Task;
    :cond_1f
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .end local v2    # "i":I
    :cond_22
    goto :goto_3b

    .line 4533
    :cond_23
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_24
    if-ge v2, v0, :cond_3b

    .line 4534
    iget-object v3, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 4535
    .restart local v3    # "child":Lcom/android/server/wm/Task;
    if-eqz v3, :cond_38

    .line 4536
    const/4 v1, 0x0

    .line 4537
    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 4533
    .end local v3    # "child":Lcom/android/server/wm/Task;
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 4541
    .end local v2    # "i":I
    :cond_3b
    :goto_3b
    if-eqz v1, :cond_40

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 4542
    :cond_40
    return-void
.end method

.method forAllLeafTasks(Ljava/util/function/Function;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/wm/Task;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 4558
    .local p1, "callback":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/wm/Task;Ljava/lang/Boolean;>;"
    const/4 v0, 0x1

    .line 4559
    .local v0, "isLeafTask":Z
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_24

    .line 4560
    iget-object v3, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 4561
    .local v3, "child":Lcom/android/server/wm/Task;
    if-eqz v3, :cond_21

    .line 4562
    const/4 v0, 0x0

    .line 4563
    invoke-virtual {v3, p1}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Function;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 4564
    return v2

    .line 4559
    .end local v3    # "child":Lcom/android/server/wm/Task;
    :cond_21
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 4568
    .end local v1    # "i":I
    :cond_24
    if-eqz v0, :cond_31

    .line 4569
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 4571
    :cond_31
    const/4 v1, 0x0

    return v1
.end method

.method forAllTasks(Ljava/util/function/Consumer;Z)V
    .registers 3
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/Task;",
            ">;Z)V"
        }
    .end annotation

    .line 4546
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/Task;>;"
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;Z)V

    .line 4547
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 4548
    return-void
.end method

.method forAllTasks(Ljava/util/function/Function;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/wm/Task;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 4552
    .local p1, "callback":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/wm/Task;Ljava/lang/Boolean;>;"
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Function;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    .line 4553
    :cond_8
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method forceWindowsScaleable(Z)V
    .registers 5
    .param p1, "force"    # Z

    .line 4471
    const-string v0, "forceWindowsScaleable"

    iget-object v1, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 4473
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_f
    if-ltz v1, :cond_1f

    .line 4474
    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowContainer;->forceWindowsScaleableInTransaction(Z)V
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_26

    .line 4473
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 4477
    .end local v1    # "i":I
    :cond_1f
    iget-object v1, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 4478
    nop

    .line 4479
    return-void

    .line 4477
    :catchall_26
    move-exception v1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 4478
    throw v1
.end method

.method public getActivityType()I
    .registers 3

    .line 1737
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getActivityType()I

    move-result v0

    .line 1738
    .local v0, "applicationType":I
    if-nez v0, :cond_16

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_16

    .line 1741
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getActivityType()I

    move-result v1

    return v1

    .line 1739
    :cond_16
    :goto_16
    return v0
.end method

.method getAnimationBounds(I)Landroid/graphics/Rect;
    .registers 3
    .param p1, "appStackClipMode"    # I

    .line 4292
    const/4 v0, 0x1

    if-ne p1, v0, :cond_12

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 4294
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 4296
    :cond_12
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->getAnimationBounds(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "outFrame"    # Landroid/graphics/Rect;
    .param p2, "outInsets"    # Landroid/graphics/Rect;
    .param p3, "outStableInsets"    # Landroid/graphics/Rect;
    .param p4, "outSurfaceInsets"    # Landroid/graphics/Rect;

    .line 3892
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v0

    .line 3894
    .local v0, "includeHidingApp":Z
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 3896
    .local v1, "windowState":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_e

    .line 3897
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/wm/WindowState;->getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_11

    .line 3899
    :cond_e
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowContainer;->getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3901
    :goto_11
    return-void
.end method

.method public getAnimationLeashParent()Landroid/view/SurfaceControl;
    .registers 8

    .line 4226
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeRecents()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    move v0, v1

    goto :goto_12

    :cond_11
    :goto_11
    move v0, v2

    .line 4227
    .local v0, "isHomeOrRecents":Z
    :goto_12
    iget-object v3, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mSplitWindowController:Lcom/android/server/wm/SplitWindowController;

    .line 4228
    invoke-virtual {v3, p0}, Lcom/android/server/wm/SplitWindowController;->isChildOfAnimatingPairTask(Lcom/android/server/wm/Task;)Z

    move-result v3

    .line 4230
    .local v3, "isChildOfAnimatingPairTask":Z
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    const/4 v5, 0x2

    if-eqz v4, :cond_8a

    .line 4231
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inSplitScreenWindowingMode()Z

    move-result v4

    if-nez v4, :cond_2b

    if-nez v3, :cond_2b

    if-eqz v0, :cond_8a

    .line 4233
    :cond_2b
    iget-object v4, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 4234
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v4

    .line 4235
    .local v4, "recentsAnimController":Lcom/android/server/wm/RecentsAnimationController;
    if-eqz v4, :cond_4f

    .line 4236
    invoke-virtual {v4}, Lcom/android/server/wm/RecentsAnimationController;->isAnimatingForSplitPairedTask()Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 4237
    invoke-virtual {v4}, Lcom/android/server/wm/RecentsAnimationController;->getSplitPairedTaskAdapterLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    if-eqz v6, :cond_4f

    .line 4238
    if-eqz v0, :cond_4a

    .line 4239
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/server/wm/TaskDisplayArea;->getAppAnimationLayer(I)Landroid/view/SurfaceControl;

    move-result-object v1

    return-object v1

    .line 4241
    :cond_4a
    invoke-virtual {v4}, Lcom/android/server/wm/RecentsAnimationController;->getSplitPairedTaskAdapterLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    return-object v1

    .line 4245
    .end local v4    # "recentsAnimController":Lcom/android/server/wm/RecentsAnimationController;
    :cond_4f
    iget-object v4, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 4246
    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->getRemoteAnimationController()Lcom/android/server/wm/RemoteAnimationController;

    move-result-object v4

    .line 4247
    .local v4, "remoteAnimController":Lcom/android/server/wm/RemoteAnimationController;
    if-eqz v4, :cond_75

    .line 4248
    invoke-virtual {v4}, Lcom/android/server/wm/RemoteAnimationController;->isAnimatingForSplitPairedTask()Z

    move-result v6

    if-eqz v6, :cond_75

    .line 4249
    invoke-virtual {v4}, Lcom/android/server/wm/RemoteAnimationController;->getSplitPairedTaskAdapterLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    if-eqz v6, :cond_75

    .line 4250
    if-eqz v0, :cond_70

    .line 4251
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/server/wm/TaskDisplayArea;->getAppAnimationLayer(I)Landroid/view/SurfaceControl;

    move-result-object v1

    return-object v1

    .line 4253
    :cond_70
    invoke-virtual {v4}, Lcom/android/server/wm/RemoteAnimationController;->getSplitPairedTaskAdapterLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    return-object v1

    .line 4257
    .end local v4    # "remoteAnimController":Lcom/android/server/wm/RemoteAnimationController;
    :cond_75
    if-eqz v0, :cond_8a

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->inSplitScreenWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 4258
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/server/wm/TaskDisplayArea;->getAppAnimationLayer(I)Landroid/view/SurfaceControl;

    move-result-object v1

    return-object v1

    .line 4268
    :cond_8a
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v4

    const/4 v6, 0x3

    if-eqz v4, :cond_96

    .line 4269
    invoke-virtual {p0, v6}, Lcom/android/server/wm/Task;->getAppAnimationLayer(I)Landroid/view/SurfaceControl;

    move-result-object v1

    return-object v1

    .line 4271
    :cond_96
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isChangingAppTransition()Z

    move-result v4

    if-eqz v4, :cond_b7

    .line 4272
    iget-object v4, p0, Lcom/android/server/wm/Task;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {v4}, Lcom/android/server/wm/SurfaceFreezer;->isChangeTransitModeFromFreeform()Z

    move-result v4

    if-eqz v4, :cond_a9

    .line 4273
    invoke-virtual {p0, v6}, Lcom/android/server/wm/Task;->getAppAnimationLayer(I)Landroid/view/SurfaceControl;

    move-result-object v1

    return-object v1

    .line 4275
    :cond_a9
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->needsZBoost()Z

    move-result v4

    if-eqz v4, :cond_b1

    move v1, v2

    goto :goto_b2

    .line 4276
    :cond_b1
    nop

    .line 4275
    :goto_b2
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->getAppAnimationLayer(I)Landroid/view/SurfaceControl;

    move-result-object v1

    return-object v1

    .line 4280
    :cond_b7
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->sHierarchicalAnimations:Z

    if-eqz v1, :cond_c0

    .line 4281
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v1

    return-object v1

    .line 4286
    :cond_c0
    invoke-virtual {p0, v5}, Lcom/android/server/wm/Task;->getAppAnimationLayer(I)Landroid/view/SurfaceControl;

    move-result-object v1

    return-object v1
.end method

.method getBaseIntent()Landroid/content/Intent;
    .registers 3

    .line 1660
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_5

    return-object v0

    .line 1661
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_a

    return-object v0

    .line 1663
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1664
    .local v0, "topTask":Lcom/android/server/wm/Task;
    if-eq v0, p0, :cond_17

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    return-object v1
.end method

.method getDescendantTaskCount()I
    .registers 5

    .line 3479
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 3480
    .local v0, "currentCount":[I
    sget-object v2, Lcom/android/server/wm/-$$Lambda$Task$hYl3dL_osZWmRFrlkS1lDYnnewM;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$hYl3dL_osZWmRFrlkS1lDYnnewM;

    const-class v3, Lcom/android/server/wm/Task;

    .line 3481
    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    .line 3480
    invoke-static {v2, v3, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v2

    .line 3482
    .local v2, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 3483
    invoke-interface {v2}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 3484
    aget v1, v0, v1

    return v1
.end method

.method getDexMetadataLaunchSize()Landroid/graphics/Point;
    .registers 4

    .line 6138
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    iget-object v1, p0, Lcom/android/server/wm/Task;->mDexMetaDataInfo:Lcom/android/server/wm/DexController$DexMetaDataInfo;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DexController;->getDexMetadataLaunchSizeLocked(Lcom/android/server/wm/DexController$DexMetaDataInfo;I)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method getDimBounds(Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "out"    # Landroid/graphics/Rect;

    .line 3936
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 3939
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 3940
    invoke-virtual {v3}, Lcom/android/server/wm/DockedStackDividerController;->isResizing()Z

    move-result v3

    if-eqz v3, :cond_16

    move v3, v1

    goto :goto_17

    :cond_16
    move v3, v2

    .line 3941
    .local v3, "dockedResizing":Z
    :goto_17
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 3942
    new-array v1, v1, [Z

    aput-boolean v2, v1, v2

    .line 3943
    .local v1, "foundTop":[Z
    sget-object v4, Lcom/android/server/wm/-$$Lambda$Task$SAhnD6goWlY1lXYn6fWba8f2JLs;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$SAhnD6goWlY1lXYn6fWba8f2JLs;

    const-class v5, Lcom/android/server/wm/ActivityRecord;

    .line 3944
    invoke-static {v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v5

    .line 3943
    invoke-static {v4, v5, p1, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v4

    .line 3945
    .local v4, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p0, v4}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 3946
    invoke-interface {v4}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 3947
    aget-boolean v2, v1, v2

    if-eqz v2, :cond_38

    .line 3948
    return-void

    .line 3952
    .end local v1    # "foundTop":[Z
    .end local v4    # "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    :cond_38
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->matchParentBounds()Z

    move-result v1

    if-nez v1, :cond_60

    .line 3959
    if-eqz v3, :cond_48

    .line 3960
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityStack;->getBounds(Landroid/graphics/Rect;)V

    goto :goto_67

    .line 3962
    :cond_48
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStack;->getBounds(Landroid/graphics/Rect;)V

    .line 3963
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 3964
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_67

    .line 3967
    :cond_60
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3969
    :goto_67
    return-void
.end method

.method getDimmer()Lcom/android/server/wm/Dimmer;
    .registers 2

    .line 4612
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4613
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    return-object v0

    .line 4621
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_1a

    .line 4625
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    return-object v0

    .line 4622
    :cond_1a
    :goto_1a
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getDimmer()Lcom/android/server/wm/Dimmer;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getDisplayArea()Lcom/android/server/wm/DisplayArea;
    .registers 2

    .line 221
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    return-object v0
.end method

.method getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .registers 2

    .line 4160
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskDisplayArea;

    return-object v0
.end method

.method getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .registers 3

    .line 3436
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 3437
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_d

    if-eq v0, p0, :cond_d

    .line 3438
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    goto :goto_11

    :cond_d
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 3437
    :goto_11
    return-object v1
.end method

.method getDisplayId()I
    .registers 3

    .line 3442
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 3443
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_9

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    goto :goto_a

    :cond_9
    const/4 v1, -0x1

    :goto_a
    return v1
.end method

.method getDragResizeMode()I
    .registers 2

    .line 3990
    iget v0, p0, Lcom/android/server/wm/Task;->mDragResizeMode:I

    return v0
.end method

.method getForcedOrientation()I
    .registers 3

    .line 468
    iget v0, p0, Lcom/android/server/wm/Task;->mForcedOrientation:I

    .line 469
    .local v0, "forcedOrientation":I
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTISTAR_ORIENTATION_CONTROL_WITH_FIT_TO_SHORT_EDGE:Z

    if-eqz v1, :cond_13

    if-eqz v0, :cond_13

    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mForcedOrientationReverseNeeded:Z

    if-eqz v1, :cond_13

    .line 471
    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 472
    const/4 v1, 0x2

    goto :goto_12

    :cond_11
    nop

    .line 471
    :goto_12
    return v1

    .line 474
    :cond_13
    return v0
.end method

.method public getFreezeSnapshotTarget()Landroid/view/SurfaceControl;
    .registers 6

    .line 2722
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v0

    .line 2723
    .local v0, "transit":I
    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->isChangeTransit(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_10

    .line 2724
    return-object v2

    .line 2728
    :cond_10
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 2729
    .local v1, "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2730
    iget-object v3, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mAppTransitionController:Lcom/android/server/wm/AppTransitionController;

    .line 2731
    invoke-virtual {v3, p0, v0, v1}, Lcom/android/server/wm/AppTransitionController;->getRemoteAnimationOverride(Lcom/android/server/wm/WindowContainer;ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    move-result-object v3

    .line 2733
    .local v3, "adapter":Landroid/view/RemoteAnimationAdapter;
    if-eqz v3, :cond_31

    invoke-virtual {v3}, Landroid/view/RemoteAnimationAdapter;->getChangeNeedsSnapshot()Z

    move-result v4

    if-nez v4, :cond_31

    .line 2734
    return-object v2

    .line 2736
    :cond_31
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    return-object v2
.end method

.method getHasBeenVisible()Z
    .registers 2

    .line 5813
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mHasBeenVisible:Z

    return v0
.end method

.method getInactiveDuration()J
    .registers 5

    .line 1208
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wm/Task;->lastActiveTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method getLastMinimizedDisplayType()I
    .registers 2

    .line 6789
    iget v0, p0, Lcom/android/server/wm/Task;->mLastMinimizedDisplayType:I

    return v0
.end method

.method getLastMinimizedRotation()I
    .registers 2

    .line 6797
    iget v0, p0, Lcom/android/server/wm/Task;->mLastMinimizedRotation:I

    return v0
.end method

.method getLastSurfaceSize()Landroid/graphics/Point;
    .registers 2

    .line 2712
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    return-object v0
.end method

.method getLaunchBounds()Landroid/graphics/Rect;
    .registers 5

    .line 3370
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 3371
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 3372
    return-object v1

    .line 3375
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v2

    .line 3376
    .local v2, "windowingMode":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeStandardOrUndefined()Z

    move-result v3

    if-eqz v3, :cond_31

    const/4 v3, 0x1

    if-eq v2, v3, :cond_31

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1f

    .line 3378
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v3

    if-nez v3, :cond_1f

    goto :goto_31

    .line 3380
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 3381
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    return-object v1

    .line 3396
    :cond_2e
    iget-object v1, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    return-object v1

    .line 3379
    :cond_31
    :goto_31
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    :cond_3b
    return-object v1
.end method

.method getMainWindowSizeChangeTask()Lcom/android/server/wm/Task;
    .registers 2

    .line 6040
    iget-object v0, p0, Lcom/android/server/wm/Task;->mMainWindowSizeChangeTask:Lcom/android/server/wm/Task;

    return-object v0
.end method

.method getMainWindowSizeChangeTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 2

    .line 6036
    iget-object v0, p0, Lcom/android/server/wm/Task;->mMainWindowSizeChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .registers 3

    .line 4601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getOrientation(I)I
    .registers 3
    .param p1, "candidate"    # I

    .line 4496
    invoke-direct {p0}, Lcom/android/server/wm/Task;->canSpecifyOrientation()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->getOrientation(I)I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, -0x2

    :goto_c
    return v0
.end method

.method getPairCellTaskId()I
    .registers 2

    .line 6741
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isInPairTask()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/wm/Task;->mPairTask:Lcom/android/server/wm/PairTask;

    invoke-virtual {v0}, Lcom/android/server/wm/PairTask;->getSplitCellPairChildId()I

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, -0x1

    :goto_e
    return v0
.end method

.method getPairPrimaryTaskId()I
    .registers 2

    .line 6733
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isInPairTask()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/wm/Task;->mPairTask:Lcom/android/server/wm/PairTask;

    invoke-virtual {v0}, Lcom/android/server/wm/PairTask;->getSplitPrimaryPairChildId()I

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, -0x1

    :goto_e
    return v0
.end method

.method getPairSecondaryTaskId()I
    .registers 2

    .line 6737
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isInPairTask()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/wm/Task;->mPairTask:Lcom/android/server/wm/PairTask;

    invoke-virtual {v0}, Lcom/android/server/wm/PairTask;->getSplitSecondaryPairChildId()I

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, -0x1

    :goto_e
    return v0
.end method

.method getPairTask()Lcom/android/server/wm/PairTask;
    .registers 2

    .line 6757
    iget-object v0, p0, Lcom/android/server/wm/Task;->mPairTask:Lcom/android/server/wm/PairTask;

    return-object v0
.end method

.method getPendingDexHelpMode()I
    .registers 2

    .line 6438
    iget v0, p0, Lcom/android/server/wm/Task;->mPendingDexHelpMode:I

    return v0
.end method

.method getPendingDexNonResizeableAppRestartHelpMode()I
    .registers 2

    .line 6456
    iget v0, p0, Lcom/android/server/wm/Task;->mPendingDexNonResizeableAppRestartHelpMode:I

    return v0
.end method

.method getProtoFieldId()J
    .registers 3

    .line 6084
    const-wide v0, 0x10b00000005L

    return-wide v0
.end method

.method getRecentPairWindowingMode()I
    .registers 2

    .line 6745
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isInPairTask()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/wm/Task;->mPairTask:Lcom/android/server/wm/PairTask;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/PairTask;->getPairChildWindowingMode(Lcom/android/server/wm/Task;)I

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method final getResizeMode()I
    .registers 2

    .line 6803
    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    return v0
.end method

.method getResumedActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 1567
    iget-object v0, p0, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    return-object v0
.end method

.method getResumedTaskThumbnailLocked()Landroid/graphics/Bitmap;
    .registers 3

    .line 6126
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 6127
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 6128
    .local v0, "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-ne v1, p0, :cond_19

    .line 6129
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->screenshotResumedActivityForRecentsLocked()Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 6132
    .end local v0    # "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method getRootActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 3

    .line 1670
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getRootActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .registers 3
    .param p1, "setToBottomIfNone"    # Z

    .line 1674
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;
    .registers 4
    .param p1, "ignoreRelinquishIdentity"    # Z
    .param p2, "setToBottomIfNone"    # Z

    .line 1678
    iget-object v0, p0, Lcom/android/server/wm/Task;->mFindRootHelper:Lcom/android/server/wm/Task$FindRootHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/Task$FindRootHelper;->findRoot(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getRootProcessName()Ljava/lang/String;
    .registers 2

    .line 3425
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_8

    .line 3426
    iget-object v0, v0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    .line 3429
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    return-object v0
.end method

.method getRootTask()Lcom/android/server/wm/Task;
    .registers 4

    .line 3457
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 3458
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-nez v0, :cond_7

    return-object p0

    .line 3460
    :cond_7
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 3461
    .local v1, "parentTask":Lcom/android/server/wm/Task;
    if-nez v1, :cond_f

    move-object v2, p0

    goto :goto_13

    :cond_f
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    :goto_13
    return-object v2
.end method

.method getRootTaskId()I
    .registers 2

    .line 3453
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    return v0
.end method

.method getRotation()I
    .registers 2

    .line 6568
    iget v0, p0, Lcom/android/server/wm/Task;->mRotation:I

    return v0
.end method

.method getSnappingGuideBounds()Landroid/graphics/Rect;
    .registers 2

    .line 6415
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_5

    .line 6416
    return-object v0

    .line 6418
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/Task;->mSnappingGuideBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method getSnapshot(ZZ)Landroid/app/ActivityManager$TaskSnapshot;
    .registers 7
    .param p1, "isLowResolution"    # Z
    .param p2, "restoreFromDisk"    # Z

    .line 1175
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1176
    const/4 v1, 0x0

    .line 1179
    .local v1, "takeTaskSnapshot":Z
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MD_REMOTE_APP_FORCE_SNAPSHOT:Z

    if-eqz v2, :cond_1e

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 1180
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isRemoteAppDisplay()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1181
    const/4 v1, 0x1

    .line 1183
    :cond_1e
    if-eqz v1, :cond_35

    .line 1184
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 1185
    .local v2, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_35

    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1186
    iget-object v3, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v3, p0}, Lcom/android/server/wm/TaskSnapshotController;->takeSnapshotByForce(Lcom/android/server/wm/Task;)V

    .line 1189
    .end local v1    # "takeTaskSnapshot":Z
    .end local v2    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_46

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1193
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    iget v2, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/server/wm/WindowManagerService;->getTaskSnapshot(IIZZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v0

    return-object v0

    .line 1189
    :catchall_46
    move-exception v1

    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getStack()Lcom/android/server/wm/ActivityStack;
    .registers 2

    .line 3448
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;
    .registers 5
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/Task;",
            ">;Z)",
            "Lcom/android/server/wm/Task;"
        }
    .end annotation

    .line 4576
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/Task;>;"
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 4577
    .local v0, "t":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_7

    return-object v0

    .line 4578
    :cond_7
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    move-object v1, p0

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return-object v1
.end method

.method getTaskDescription()Landroid/app/ActivityManager$TaskDescription;
    .registers 2

    .line 4491
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    return-object v0
.end method

.method getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 2

    .line 4836
    new-instance v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    .line 4837
    .local v0, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;)V

    .line 4838
    return-object v0
.end method

.method getTaskOutset()I
    .registers 5

    .line 2694
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mRenderShadowsInCompositor:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 2695
    return v1

    .line 2697
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2698
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_28

    if-eqz v0, :cond_28

    .line 2699
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 2703
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x5

    .line 2704
    invoke-static {v2, v1}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    .line 2703
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    return v2

    .line 2707
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_28
    return v1
.end method

.method getTopFullscreenActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 4423
    sget-object v0, Lcom/android/server/wm/-$$Lambda$Task$lXJBzoJlwVRKPyXjzjAwFqzwRVo;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$lXJBzoJlwVRKPyXjzjAwFqzwRVo;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 1682
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getTopNonFinishingActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .registers 3
    .param p1, "includeOverlays"    # Z

    .line 1686
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/Task;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 4431
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;
    .registers 4
    .param p1, "includeHidingApp"    # Z
    .param p2, "excludePopOver"    # Z

    .line 4436
    new-instance v0, Lcom/android/server/wm/-$$Lambda$Task$Tk4A6xQcN4pQD2SdAXTKS0R9LkI;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/-$$Lambda$Task$Tk4A6xQcN4pQD2SdAXTKS0R9LkI;-><init>(ZZ)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;
    .registers 2

    .line 4355
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0
.end method

.method getTopVisibleAppMainWindow(Z)Lcom/android/server/wm/WindowState;
    .registers 4
    .param p1, "includeHidingApp"    # Z

    .line 4360
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 4362
    .local v0, "activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return-object v1
.end method

.method getVisibility(Lcom/android/server/wm/ActivityRecord;)I
    .registers 28
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;

    .line 4874
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_1b7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v2

    if-eqz v2, :cond_13

    goto/16 :goto_1b7

    .line 4878
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/Task;->isTopActivityLaunchedBehind()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1b

    .line 4879
    return v4

    .line 4882
    :cond_1b
    const/4 v2, 0x0

    .line 4883
    .local v2, "gotSplitScreenStack":Z
    const/4 v5, 0x0

    .line 4884
    .local v5, "gotOpaqueSplitScreenPrimary":Z
    const/4 v6, 0x0

    .line 4885
    .local v6, "gotOpaqueSplitScreenSecondary":Z
    const/4 v7, 0x0

    .line 4886
    .local v7, "gotTranslucentFullscreen":Z
    const/4 v8, 0x0

    .line 4887
    .local v8, "gotTranslucentSplitScreenPrimary":Z
    const/4 v9, 0x0

    .line 4888
    .local v9, "gotTranslucentSplitScreenSecondary":Z
    const/4 v10, 0x1

    .line 4891
    .local v10, "shouldBeVisible":Z
    const/4 v11, 0x0

    .line 4892
    .local v11, "gotOpaqueSplitScreenCell":Z
    const/4 v12, 0x0

    .line 4897
    .local v12, "gotTranslucentSplitScreenCell":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v13

    .line 4898
    .local v13, "parent":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v14

    const/4 v15, 0x1

    if-eqz v14, :cond_3d

    .line 4899
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v14

    invoke-virtual {v14, v1}, Lcom/android/server/wm/Task;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result v14

    .line 4900
    .local v14, "parentVisibility":I
    if-ne v14, v3, :cond_3a

    .line 4902
    return v3

    .line 4903
    :cond_3a
    if-ne v14, v15, :cond_3d

    .line 4906
    const/4 v7, 0x1

    .line 4910
    .end local v14    # "parentVisibility":I
    :cond_3d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v14

    .line 4911
    .local v14, "windowingMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isActivityTypeAssistant()Z

    move-result v16

    .line 4912
    .local v16, "isAssistantType":Z
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v4, v17

    .local v4, "i":I
    :goto_4d
    if-ltz v4, :cond_184

    .line 4913
    invoke-virtual {v13, v4}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    .line 4916
    .local v3, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v20

    if-eqz v20, :cond_6c

    .line 4917
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v20

    if-eqz v20, :cond_6c

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->inSplitScreenSecondaryWindowingMode()Z

    move-result v20

    if-eqz v20, :cond_6c

    move/from16 v20, v15

    goto :goto_6e

    :cond_6c
    const/16 v20, 0x0

    .line 4918
    .local v20, "otherIsSplitSecondaryRootTask":Z
    :goto_6e
    const/16 v21, 0x0

    .line 4924
    .local v21, "useSecondaryTopTask":Z
    if-eqz v20, :cond_9e

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isFocusable()Z

    move-result v22

    if-eqz v22, :cond_9e

    if-eq v3, v0, :cond_9e

    .line 4925
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v22

    .line 4926
    .local v22, "topTask":Lcom/android/server/wm/Task;
    if-eqz v22, :cond_89

    .line 4927
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/Task;->isNonOrganizedHomeOrRecentsTask()Z

    move-result v23

    if-eqz v23, :cond_89

    move/from16 v23, v15

    goto :goto_8b

    :cond_89
    const/16 v23, 0x0

    .line 4928
    .local v23, "isOtherTopTaskHomeOrRecents":Z
    :goto_8b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->inSplitScreenWindowingMode()Z

    move-result v24

    if-eqz v24, :cond_94

    .line 4929
    const/16 v21, 0x1

    goto :goto_9e

    .line 4930
    :cond_94
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->inFullscreenWindowingMode()Z

    move-result v24

    if-eqz v24, :cond_9e

    if-eqz v23, :cond_9e

    .line 4934
    const/16 v21, 0x1

    .line 4938
    .end local v22    # "topTask":Lcom/android/server/wm/Task;
    .end local v23    # "isOtherTopTaskHomeOrRecents":Z
    :cond_9e
    :goto_9e
    if-eqz v21, :cond_b2

    .line 4939
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v22

    .line 4940
    .restart local v22    # "topTask":Lcom/android/server/wm/Task;
    if-eqz v22, :cond_a9

    move-object/from16 v23, v22

    goto :goto_ad

    :cond_a9
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v23

    :goto_ad
    move-object/from16 v22, v23

    .line 4941
    .local v22, "other":Lcom/android/server/wm/Task;
    move-object/from16 v15, v22

    goto :goto_b8

    .line 4943
    .end local v22    # "other":Lcom/android/server/wm/Task;
    :cond_b2
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v22

    move-object/from16 v15, v22

    .line 4945
    .local v15, "other":Lcom/android/server/wm/Task;
    :goto_b8
    if-nez v15, :cond_bc

    goto/16 :goto_17c

    .line 4947
    :cond_bc
    invoke-virtual {v15}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v22

    if-eqz v22, :cond_c5

    const/16 v22, 0x1

    goto :goto_c7

    :cond_c5
    const/16 v22, 0x0

    .line 4948
    .local v22, "hasRunningActivities":Z
    :goto_c7
    if-ne v15, v0, :cond_e3

    .line 4951
    if-nez v22, :cond_db

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/Task;->isInTask(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v24

    if-nez v24, :cond_db

    .line 4952
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v24

    if-eqz v24, :cond_d8

    goto :goto_db

    :cond_d8
    const/16 v24, 0x0

    goto :goto_dd

    :cond_db
    :goto_db
    const/16 v24, 0x1

    :goto_dd
    move/from16 v10, v24

    .line 4953
    move/from16 v24, v2

    goto/16 :goto_186

    .line 4956
    :cond_e3
    if-nez v22, :cond_e7

    .line 4957
    goto/16 :goto_17c

    .line 4960
    :cond_e7
    move/from16 v24, v2

    .end local v2    # "gotSplitScreenStack":Z
    .local v24, "gotSplitScreenStack":Z
    invoke-virtual {v15}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v2

    .line 4962
    .local v2, "otherWindowingMode":I
    move-object/from16 v25, v3

    const/4 v3, 0x1

    .end local v3    # "wc":Lcom/android/server/wm/WindowContainer;
    .local v25, "wc":Lcom/android/server/wm/WindowContainer;
    if-ne v2, v3, :cond_100

    .line 4963
    invoke-virtual {v15, v1}, Lcom/android/server/wm/Task;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_fe

    .line 4965
    const/4 v3, 0x1

    .line 4966
    .end local v7    # "gotTranslucentFullscreen":Z
    .local v3, "gotTranslucentFullscreen":Z
    move v7, v3

    move/from16 v2, v24

    goto/16 :goto_17c

    .line 4968
    .end local v3    # "gotTranslucentFullscreen":Z
    .restart local v7    # "gotTranslucentFullscreen":Z
    :cond_fe
    const/4 v3, 0x2

    return v3

    .line 4969
    :cond_100
    const/4 v3, 0x3

    if-ne v2, v3, :cond_117

    if-nez v5, :cond_117

    .line 4971
    const/4 v3, 0x1

    .line 4972
    .end local v24    # "gotSplitScreenStack":Z
    .local v3, "gotSplitScreenStack":Z
    invoke-virtual {v15, v1}, Lcom/android/server/wm/Task;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v8

    .line 4973
    xor-int/lit8 v18, v8, 0x1

    move/from16 v5, v18

    .line 4974
    move/from16 v18, v3

    const/4 v3, 0x3

    .end local v3    # "gotSplitScreenStack":Z
    .local v18, "gotSplitScreenStack":Z
    if-ne v14, v3, :cond_148

    if-eqz v5, :cond_148

    .line 4977
    const/4 v3, 0x2

    return v3

    .line 4979
    .end local v18    # "gotSplitScreenStack":Z
    .restart local v24    # "gotSplitScreenStack":Z
    :cond_117
    const/4 v3, 0x4

    if-ne v2, v3, :cond_146

    if-nez v6, :cond_146

    .line 4981
    const/4 v3, 0x1

    .line 4982
    .end local v24    # "gotSplitScreenStack":Z
    .restart local v3    # "gotSplitScreenStack":Z
    invoke-virtual {v15, v1}, Lcom/android/server/wm/Task;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v9

    .line 4983
    xor-int/lit8 v19, v9, 0x1

    move/from16 v6, v19

    .line 4984
    const/4 v1, 0x4

    if-ne v14, v1, :cond_12c

    if-eqz v6, :cond_12c

    .line 4987
    const/4 v1, 0x2

    return v1

    .line 4990
    :cond_12c
    const/4 v1, 0x1

    if-ne v14, v1, :cond_143

    if-eqz v6, :cond_143

    .line 4993
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v1

    if-nez v1, :cond_143

    iget-object v1, v0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAppPairController:Lcom/android/server/wm/AppPairController;

    .line 4994
    invoke-virtual {v1}, Lcom/android/server/wm/AppPairController;->isLaunchingPairActivitiesLocked()Z

    move-result v1

    if-eqz v1, :cond_143

    .line 4995
    const/4 v1, 0x2

    return v1

    .line 5007
    :cond_143
    move/from16 v18, v3

    goto :goto_148

    .end local v3    # "gotSplitScreenStack":Z
    .restart local v24    # "gotSplitScreenStack":Z
    :cond_146
    move/from16 v18, v24

    .end local v24    # "gotSplitScreenStack":Z
    .restart local v18    # "gotSplitScreenStack":Z
    :cond_148
    :goto_148
    if-eqz v5, :cond_14e

    if-eqz v6, :cond_14e

    .line 5019
    const/4 v1, 0x2

    return v1

    .line 5007
    :cond_14e
    const/4 v1, 0x2

    .line 5024
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_158

    if-eqz v6, :cond_158

    .line 5027
    return v1

    .line 5030
    :cond_158
    if-eqz v18, :cond_174

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v1

    if-nez v1, :cond_174

    .line 5031
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v1

    if-eqz v1, :cond_174

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isActivityTypeStandard()Z

    move-result v1

    if-eqz v1, :cond_174

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->inFullscreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_174

    .line 5033
    const/4 v1, 0x2

    return v1

    .line 5037
    :cond_174
    if-eqz v16, :cond_17a

    if-eqz v18, :cond_17a

    .line 5041
    const/4 v1, 0x2

    return v1

    .line 4912
    .end local v2    # "otherWindowingMode":I
    .end local v15    # "other":Lcom/android/server/wm/Task;
    .end local v20    # "otherIsSplitSecondaryRootTask":Z
    .end local v21    # "useSecondaryTopTask":Z
    .end local v22    # "hasRunningActivities":Z
    .end local v25    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_17a
    move/from16 v2, v18

    .end local v18    # "gotSplitScreenStack":Z
    .local v2, "gotSplitScreenStack":Z
    :goto_17c
    add-int/lit8 v4, v4, -0x1

    move-object/from16 v1, p1

    const/4 v3, 0x2

    const/4 v15, 0x1

    goto/16 :goto_4d

    :cond_184
    move/from16 v24, v2

    .line 5045
    .end local v2    # "gotSplitScreenStack":Z
    .end local v4    # "i":I
    .restart local v24    # "gotSplitScreenStack":Z
    :goto_186
    if-nez v10, :cond_18a

    .line 5046
    const/4 v1, 0x2

    return v1

    .line 5050
    :cond_18a
    const/4 v1, 0x1

    if-eq v14, v1, :cond_1a1

    const/16 v2, 0xc

    if-eq v14, v2, :cond_19e

    const/4 v2, 0x3

    if-eq v14, v2, :cond_19b

    const/4 v2, 0x4

    if-eq v14, v2, :cond_198

    goto :goto_1af

    .line 5077
    :cond_198
    if-eqz v9, :cond_1af

    .line 5079
    return v1

    .line 5071
    :cond_19b
    if-eqz v8, :cond_1af

    .line 5073
    return v1

    .line 5084
    :cond_19e
    if-eqz v12, :cond_1af

    .line 5085
    return v1

    .line 5052
    :cond_1a1
    if-nez v8, :cond_1a6

    if-nez v9, :cond_1a6

    goto :goto_1af

    .line 5058
    :cond_1a6
    if-nez v9, :cond_1b5

    .line 5060
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v1

    if-eqz v1, :cond_1b5

    .line 5063
    nop

    .line 5092
    :cond_1af
    :goto_1af
    if-eqz v7, :cond_1b3

    const/4 v4, 0x1

    goto :goto_1b4

    .line 5093
    :cond_1b3
    const/4 v4, 0x0

    .line 5092
    :goto_1b4
    return v4

    .line 5067
    :cond_1b5
    const/4 v1, 0x1

    return v1

    .line 4875
    .end local v5    # "gotOpaqueSplitScreenPrimary":Z
    .end local v6    # "gotOpaqueSplitScreenSecondary":Z
    .end local v7    # "gotTranslucentFullscreen":Z
    .end local v8    # "gotTranslucentSplitScreenPrimary":Z
    .end local v9    # "gotTranslucentSplitScreenSecondary":Z
    .end local v10    # "shouldBeVisible":Z
    .end local v11    # "gotOpaqueSplitScreenCell":Z
    .end local v12    # "gotTranslucentSplitScreenCell":Z
    .end local v13    # "parent":Lcom/android/server/wm/WindowContainer;
    .end local v14    # "windowingMode":I
    .end local v16    # "isAssistantType":Z
    .end local v24    # "gotSplitScreenStack":Z
    :cond_1b7
    :goto_1b7
    const/4 v1, 0x2

    return v1
.end method

.method hasPendingDexHelpMode()Z
    .registers 2

    .line 6442
    iget v0, p0, Lcom/android/server/wm/Task;->mPendingDexHelpMode:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method hasPendingDexNonResizeableAppRestartHelpMode()Z
    .registers 2

    .line 6460
    iget v0, p0, Lcom/android/server/wm/Task;->mPendingDexNonResizeableAppRestartHelpMode:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method hasVisiblePopOverChild()Z
    .registers 3

    .line 6095
    invoke-direct {p0}, Lcom/android/server/wm/Task;->hasPopOverChild()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 6096
    sget-object v0, Lcom/android/server/wm/-$$Lambda$Task$RUeCI3SAcBc0YqHgriDqPIG0rD0;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$RUeCI3SAcBc0YqHgriDqPIG0rD0;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1

    .line 6098
    :cond_11
    return v1
.end method

.method hasWindowsAlive()Z
    .registers 2

    .line 3690
    sget-object v0, Lcom/android/server/wm/-$$Lambda$kMHOkFJdJNCG8WGqd9dfu58tyGo;->INSTANCE:Lcom/android/server/wm/-$$Lambda$kMHOkFJdJNCG8WGqd9dfu58tyGo;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method isAliasManaged()Z
    .registers 2

    .line 6767
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mIsAliasManaged:Z

    return v0
.end method

.method public isAttached()Z
    .registers 3

    .line 4153
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 4154
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method isChangePinnedToSplitSceen()Z
    .registers 2

    .line 6576
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mChangePinnedToSplitScreen:Z

    return v0
.end method

.method isClearingToReuseTask()Z
    .registers 2

    .line 2121
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    return v0
.end method

.method isDeferredResizeModeTaskLocked()Z
    .registers 6

    .line 6466
    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 6467
    return v1

    .line 6469
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiSplitBlockListController:Lcom/android/server/wm/MultiSplitBlockListController;

    iget-object v2, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 6471
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 6470
    invoke-virtual {v0, v2}, Lcom/android/server/wm/MultiSplitBlockListController;->isMultiSplitBlocklistPackageLocked(Ljava/lang/String;)Z

    move-result v0

    .line 6472
    .local v0, "isBlocklistPackage":Z
    iget v2, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-direct {p0, v2}, Lcom/android/server/wm/Task;->isBlocklistResizeMode(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v0, :cond_1f

    move v2, v3

    goto :goto_20

    :cond_1f
    move v2, v1

    .line 6473
    .local v2, "resizeModeChanged":Z
    :goto_20
    if-eqz v2, :cond_29

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    if-eqz v4, :cond_29

    move v1, v3

    :cond_29
    return v1
.end method

.method isDexCompatAllowedFullscreen()Z
    .registers 2

    .line 6408
    const/4 v0, 0x0

    return v0
.end method

.method isDexCompatEnabled()Z
    .registers 2

    .line 6390
    const/4 v0, 0x0

    return v0
.end method

.method isDexCompatUiFullscreen()Z
    .registers 3

    .line 6402
    iget v0, p0, Lcom/android/server/wm/Task;->mDexCompatUiMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method isDragResizing()Z
    .registers 2

    .line 3986
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDragResizing:Z

    return v0
.end method

.method isFirstAddChild()Z
    .registers 2

    .line 6775
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->nowFirstAddChild:Z

    return v0
.end method

.method isFloating()Z
    .registers 2

    .line 4170
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mPreserveNonFloatingState:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method isFocusableAndVisible()Z
    .registers 2

    .line 4453
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isTopActivityFocusable()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method protected isForceHidden()Z
    .registers 2

    .line 6079
    iget v0, p0, Lcom/android/server/wm/Task;->mForceHiddenFlags:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isForceResumeWhilePause()Z
    .registers 2

    .line 6783
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mForceResumeWhilePause:Z

    return v0
.end method

.method isInChangeTransition()Z
    .registers 2

    .line 2717
    iget-object v0, p0, Lcom/android/server/wm/Task;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceFreezer;->hasLeash()Z

    move-result v0

    if-nez v0, :cond_13

    iget v0, p0, Lcom/android/server/wm/Task;->mTransit:I

    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->isChangeTransit(I)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method isInPairTask()Z
    .registers 2

    .line 6729
    iget-object v0, p0, Lcom/android/server/wm/Task;->mPairTask:Lcom/android/server/wm/PairTask;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isInTask(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .registers 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 5105
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 5106
    return-object v0

    .line 5108
    :cond_4
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 5109
    return-object p1

    .line 5111
    :cond_b
    return-object v0
.end method

.method isLeafTask()Z
    .registers 4

    .line 3470
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1d

    .line 3471
    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 3472
    const/4 v1, 0x0

    return v1

    .line 3470
    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3475
    .end local v0    # "i":I
    :cond_1d
    return v1
.end method

.method isMinimized()Z
    .registers 2

    .line 6588
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mIsMinimized:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->supportsMinimizeState()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method isNonOrganizedHomeOrRecentsTask()Z
    .registers 2

    .line 4854
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeRecents()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method isOrganized()Z
    .registers 2

    .line 5777
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isPairTask()Z
    .registers 2

    .line 6749
    const/4 v0, 0x0

    return v0
.end method

.method isResizeable()Z
    .registers 2

    .line 3846
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->isResizeable(Z)Z

    move-result v0

    return v0
.end method

.method isResizeable(Z)Z
    .registers 3
    .param p1, "checkSupportsPip"    # Z

    .line 3841
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    if-nez v0, :cond_17

    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v0

    if-nez v0, :cond_17

    if-eqz p1, :cond_15

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method isRootTask()Z
    .registers 2

    .line 3466
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne v0, p0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method isSameIntentFilter(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 5
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1357
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1360
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_1c

    .line 1361
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1363
    :cond_1c
    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method isTaskAnimating()Z
    .registers 3

    .line 4324
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    .line 4325
    .local v0, "recentsAnim":Lcom/android/server/wm/RecentsAnimationController;
    if-eqz v0, :cond_10

    .line 4326
    invoke-virtual {v0, p0}, Lcom/android/server/wm/RecentsAnimationController;->isAnimatingTask(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 4327
    const/4 v1, 0x1

    return v1

    .line 4330
    :cond_10
    new-instance v1, Lcom/android/server/wm/-$$Lambda$Task$vQWt_tmb4REUVDEUqY27uhFvBmg;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$Task$vQWt_tmb4REUVDEUqY27uhFvBmg;-><init>(Lcom/android/server/wm/Task;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->forAllTasks(Ljava/util/function/Function;)Z

    move-result v1

    return v1
.end method

.method isTaskId(I)Z
    .registers 3
    .param p1, "taskId"    # I

    .line 4842
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isTopActivityFocusable()Z
    .registers 3

    .line 4447
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 4448
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v1

    goto :goto_1e

    .line 4449
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->canReceiveKeys()Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    .line 4448
    :goto_1e
    return v1
.end method

.method isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 5
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;

    .line 4181
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_26

    .line 4184
    :cond_e
    sget-object v0, Lcom/android/server/wm/-$$Lambda$Task$CKQ9RLMNPYajktwO1VrUoQGHF_8;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$CKQ9RLMNPYajktwO1VrUoQGHF_8;

    const-class v2, Lcom/android/server/wm/ActivityRecord;

    .line 4185
    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    .line 4184
    invoke-static {v0, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    .line 4186
    .local v0, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 4187
    .local v2, "opaque":Lcom/android/server/wm/ActivityRecord;
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 4188
    if-nez v2, :cond_24

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    :goto_25
    return v1

    .line 4182
    .end local v0    # "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    .end local v2    # "opaque":Lcom/android/server/wm/ActivityRecord;
    :cond_26
    :goto_26
    return v1
.end method

.method isUidPresent(I)Z
    .registers 5
    .param p1, "uid"    # I

    .line 1700
    sget-object v0, Lcom/android/server/wm/-$$Lambda$QEISWTQzWbgxRMT5rMnIEzpsKpc;->INSTANCE:Lcom/android/server/wm/-$$Lambda$QEISWTQzWbgxRMT5rMnIEzpsKpc;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 1701
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1700
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    .line 1702
    .local v0, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 1703
    .local v1, "isUidPresent":Z
    :goto_19
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 1704
    return v1
.end method

.method public synthetic lambda$getNextFocusableTask$9$Task(ZLjava/lang/Object;)Z
    .registers 5
    .param p1, "allowFocusSelf"    # Z
    .param p2, "task"    # Ljava/lang/Object;

    .line 3503
    if-nez p1, :cond_4

    if-eq p2, p0, :cond_1f

    :cond_4
    move-object v0, p2

    check-cast v0, Lcom/android/server/wm/ActivityStack;

    .line 3504
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isFocusableAndVisible()Z

    move-result v0

    if-eqz v0, :cond_1f

    move-object v0, p2

    check-cast v0, Lcom/android/server/wm/ActivityStack;

    .line 3508
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isAlwaysOnTopFreeform()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 3509
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1f

    :cond_1d
    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    .line 3503
    :goto_20
    return v0
.end method

.method public synthetic lambda$isTaskAnimating$10$Task(Lcom/android/server/wm/Task;)Ljava/lang/Boolean;
    .registers 3
    .param p1, "t"    # Lcom/android/server/wm/Task;

    .line 4330
    if-eq p1, p0, :cond_a

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isTaskAnimating()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$performClearTask$1$Task(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1928
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_5

    return-void

    .line 1930
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->takeFromHistory()V

    .line 1931
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 1932
    return-void
.end method

.method public synthetic lambda$performClearTask$2$Task(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1937
    iget-object v0, p0, Lcom/android/server/wm/Task;->mToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method lockTaskAuthToString()Ljava/lang/String;
    .registers 3

    .line 2022
    iget v0, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    if-eqz v0, :cond_31

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_28

    const/4 v1, 0x4

    if-eq v0, v1, :cond_25

    .line 2028
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2027
    :cond_25
    const-string v0, "LOCK_TASK_AUTH_LAUNCHABLE_PRIV"

    return-object v0

    .line 2026
    :cond_28
    const-string v0, "LOCK_TASK_AUTH_WHITELISTED"

    return-object v0

    .line 2025
    :cond_2b
    const-string v0, "LOCK_TASK_AUTH_LAUNCHABLE"

    return-object v0

    .line 2024
    :cond_2e
    const-string v0, "LOCK_TASK_AUTH_PINNABLE"

    return-object v0

    .line 2023
    :cond_31
    const-string v0, "LOCK_TASK_AUTH_DONT_LOCK"

    return-object v0
.end method

.method public makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .registers 4

    .line 4220
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method migrateToNewSurfaceControl()V
    .registers 3

    .line 2650
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->migrateToNewSurfaceControl()V

    .line 2651
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 2652
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 2653
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    .line 2654
    return-void
.end method

.method final moveActivityToFrontLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p1, "newTop"    # Lcom/android/server/wm/ActivityRecord;

    .line 1728
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing and adding activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to stack at top callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    .line 1729
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1728
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    :cond_27
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->positionChildAtTop(Lcom/android/server/wm/ActivityRecord;)V

    .line 1732
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateEffectiveIntent()V

    .line 1733
    return-void
.end method

.method onActivityStateChanged(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V
    .registers 8
    .param p1, "record"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "state"    # Lcom/android/server/wm/ActivityStack$ActivityState;
    .param p3, "reason"    # Ljava/lang/String;

    .line 2299
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2300
    .local v0, "parentTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_12

    .line 2301
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/Task;->onActivityStateChanged(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 2305
    iget-boolean v1, v0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-nez v1, :cond_12

    .line 2306
    return-void

    .line 2310
    :cond_12
    iget-object v1, p0, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v2, " - onActivityStateChanged"

    if-ne p1, v1, :cond_2f

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq p2, v1, :cond_2f

    .line 2311
    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/android/server/wm/Task;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 2314
    :cond_2f
    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne p2, v1, :cond_83

    .line 2315
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v1, :cond_56

    .line 2316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set resumed activity to:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " reason:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    :cond_56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/Task;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 2319
    iget-object v1, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-ne p1, v1, :cond_76

    .line 2320
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    goto :goto_78

    .line 2323
    :cond_76
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_APPLOCK:Z

    .line 2328
    :goto_78
    iget-object v1, p0, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    .line 2330
    :cond_83
    return-void
.end method

.method protected onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "anim"    # Lcom/android/server/wm/AnimationAdapter;

    .line 2612
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 2617
    sget-object v0, Lcom/android/server/wm/-$$Lambda$Task$lU0jRiFsj01s8zPYxLf4jJkeBzw;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$lU0jRiFsj01s8zPYxLf4jJkeBzw;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 2624
    return-void
.end method

.method public onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 2598
    iget-object v0, p0, Lcom/android/server/wm/Task;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    iget-object v0, v0, Lcom/android/server/wm/SurfaceFreezer;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    if-eqz v0, :cond_c

    .line 2599
    sget-object v0, Lcom/android/server/wm/-$$Lambda$Task$EIqMrEJJ4HHXYzbnh7uqGhncoV8;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$EIqMrEJJ4HHXYzbnh7uqGhncoV8;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 2605
    :cond_c
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V

    .line 2606
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 14
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 2336
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v0

    .line 2337
    .local v0, "prevPersistTaskBounds":Z
    nop

    .line 2338
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v1

    .line 2339
    .local v1, "nextPersistTaskBounds":Z
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideWindowingMode()I

    move-result v2

    if-nez v2, :cond_1f

    .line 2340
    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v1

    .line 2342
    :cond_1f
    if-nez v0, :cond_38

    if-eqz v1, :cond_38

    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_38

    .line 2343
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_38

    .line 2345
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v3, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 2346
    invoke-virtual {v2, v3}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 2349
    :cond_38
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v2

    .line 2351
    .local v2, "prevWinMode":I
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_POP_OVER:Z

    const/4 v4, 0x5

    const/4 v5, 0x1

    if-eqz v3, :cond_9c

    invoke-direct {p0}, Lcom/android/server/wm/Task;->hasPopOverChild()Z

    move-result v3

    if-eqz v3, :cond_9c

    .line 2352
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2353
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v3

    .line 2354
    .local v3, "windowingMode":I
    if-nez v3, :cond_5a

    .line 2355
    iget-object v6, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v3

    .line 2357
    :cond_5a
    new-instance v6, Landroid/content/res/Configuration;

    invoke-direct {v6}, Landroid/content/res/Configuration;-><init>()V

    .line 2359
    .local v6, "nextConfig":Landroid/content/res/Configuration;
    if-eq v3, v5, :cond_8b

    .line 2364
    if-ne v3, v4, :cond_6e

    .line 2365
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 2366
    invoke-virtual {p0, v6, p1}, Lcom/android/server/wm/Task;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    goto :goto_8e

    .line 2367
    :cond_6e
    invoke-static {v3}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result v7

    if-eqz v7, :cond_8e

    .line 2368
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    sget-object v8, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v7, v8}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v7

    if-nez v7, :cond_8e

    .line 2371
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 2372
    invoke-virtual {p0, v6, p1}, Lcom/android/server/wm/Task;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    goto :goto_8e

    .line 2363
    :cond_8b
    invoke-virtual {p0, v6, p1}, Lcom/android/server/wm/Task;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 2375
    :cond_8e
    :goto_8e
    invoke-direct {p0, v6}, Lcom/android/server/wm/Task;->shouldSwitchPopOver(Landroid/content/res/Configuration;)Z

    move-result v7

    if-eqz v7, :cond_9c

    .line 2376
    new-instance v7, Lcom/android/server/wm/-$$Lambda$Task$nJT3wK_oF48Ry_V83YH-UjPnZy0;

    invoke-direct {v7, v6}, Lcom/android/server/wm/-$$Lambda$Task$nJT3wK_oF48Ry_V83YH-UjPnZy0;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {p0, v7}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 2382
    .end local v3    # "windowingMode":I
    .end local v6    # "nextConfig":Landroid/content/res/Configuration;
    :cond_9c
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-eqz v3, :cond_116

    .line 2383
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isNonOrganizedHomeOrRecentsTask()Z

    move-result v3

    if-eqz v3, :cond_116

    .line 2384
    iget-object v3, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v3

    if-eqz v3, :cond_e0

    .line 2385
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 2386
    .local v3, "overrideBounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 2387
    .local v6, "displayBounds":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-ne v7, v8, :cond_d6

    .line 2388
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-eq v7, v8, :cond_df

    .line 2389
    :cond_d6
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v7, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v7, v6}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 2392
    .end local v3    # "overrideBounds":Landroid/graphics/Rect;
    .end local v6    # "displayBounds":Landroid/graphics/Rect;
    :cond_df
    goto :goto_116

    .line 2393
    :cond_e0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->inSplitScreenSecondaryWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_10c

    .line 2394
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Task_onConfigurationChanged: home task is still in split-secondary, home="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", root="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2395
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2394
    const-string v6, "ActivityTaskManager"

    invoke-static {v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2398
    :cond_10c
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 2403
    :cond_116
    :goto_116
    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v3

    .line 2404
    .local v3, "winMode":I
    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/Task;->shouldSnapshotSplitTask(II)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_170

    .line 2405
    new-array v6, v5, [Lcom/android/server/wm/Task;

    aput-object p0, v6, v7

    invoke-static {v6}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v6

    .line 2406
    .local v6, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/Task;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isInPairTask()Z

    move-result v8

    if-eqz v8, :cond_162

    .line 2407
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getPairTask()Lcom/android/server/wm/PairTask;

    move-result-object v8

    .line 2408
    .local v8, "tmpPairTask":Lcom/android/server/wm/PairTask;
    invoke-direct {p0, v8}, Lcom/android/server/wm/Task;->isInSkipClosingAppSnapshotTasks(Lcom/android/server/wm/Task;)Z

    move-result v9

    if-nez v9, :cond_162

    .line 2409
    iget v9, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getPairPrimaryTaskId()I

    move-result v10

    if-ne v9, v10, :cond_14d

    .line 2410
    invoke-virtual {v8}, Lcom/android/server/wm/PairTask;->getSplitSecondaryPairChild()Lcom/android/server/wm/Task;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/wm/Task;->isInSkipClosingAppSnapshotTasks(Lcom/android/server/wm/Task;)Z

    move-result v9

    if-nez v9, :cond_15f

    :cond_14d
    iget v9, p0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 2411
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getPairSecondaryTaskId()I

    move-result v10

    if-ne v9, v10, :cond_162

    .line 2412
    invoke-virtual {v8}, Lcom/android/server/wm/PairTask;->getSplitPrimaryPairChild()Lcom/android/server/wm/Task;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/wm/Task;->isInSkipClosingAppSnapshotTasks(Lcom/android/server/wm/Task;)Z

    move-result v9

    if-eqz v9, :cond_162

    .line 2413
    :cond_15f
    invoke-virtual {v6, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2417
    .end local v8    # "tmpPairTask":Lcom/android/server/wm/PairTask;
    :cond_162
    iget-object v8, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v8, v6}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;)V

    .line 2418
    iget-object v8, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v8, v6}, Lcom/android/server/wm/TaskSnapshotController;->addSkipClosingAppSnapshotTasks(Landroid/util/ArraySet;)V

    .line 2421
    .end local v6    # "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/Task;>;"
    :cond_170
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v6

    if-eqz v6, :cond_197

    .line 2422
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v6

    .line 2423
    .local v6, "w":Lcom/android/server/wm/WindowState;
    if-eqz v6, :cond_18d

    iget-boolean v8, v6, Lcom/android/server/wm/WindowState;->mLayoutWithIme:Z

    if-eqz v8, :cond_18d

    .line 2424
    iget-object v8, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v8}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 2425
    iget-object v8, p0, Lcom/android/server/wm/Task;->mTmpPrevBounds:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_196

    .line 2427
    :cond_18d
    iget-object v8, p0, Lcom/android/server/wm/Task;->mTmpPrevBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2429
    .end local v6    # "w":Lcom/android/server/wm/WindowState;
    :goto_196
    goto :goto_1a0

    .line 2431
    :cond_197
    iget-object v6, p0, Lcom/android/server/wm/Task;->mTmpPrevBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2433
    :goto_1a0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v6

    .line 2434
    .local v6, "wasInMultiWindowMode":Z
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v8

    .line 2437
    .local v8, "wasInPictureInPicture":Z
    iget-object v9, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiStarController:Lcom/android/server/wm/MultiStarController;

    invoke-virtual {v9, p0, p1}, Lcom/android/server/wm/MultiStarController;->applyOrientationControlPolicy(Lcom/android/server/wm/Task;Landroid/content/res/Configuration;)V

    .line 2439
    const/4 v9, 0x0

    .line 2441
    .local v9, "wasInDexMode":Z
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2443
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v10

    if-eq v2, v10, :cond_1c2

    .line 2444
    iget v10, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v11

    invoke-static {v10, v2, v11}, Lcom/android/server/wm/EventLogTags;->writeWmTaskWindowingModeChanged(III)V

    .line 2449
    :cond_1c2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/server/wm/Task;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    .line 2451
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v10

    if-eq v8, v10, :cond_1d9

    .line 2452
    iget-object v10, p0, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v11

    invoke-virtual {v10, p0, v11}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityStack;)V

    goto :goto_1e4

    .line 2453
    :cond_1d9
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v10

    if-eq v6, v10, :cond_1e4

    .line 2454
    iget-object v10, p0, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v10, p0}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleUpdateMultiWindowMode(Lcom/android/server/wm/Task;)V

    .line 2464
    :cond_1e4
    :goto_1e4
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v10

    .line 2465
    .local v10, "newWinMode":I
    if-eq v2, v10, :cond_219

    iget-object v11, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v11, :cond_219

    .line 2466
    invoke-direct {p0, v2, v10}, Lcom/android/server/wm/Task;->shouldStartChangeTransition(II)Z

    move-result v11

    if-eqz v11, :cond_219

    .line 2468
    iget-object v5, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mMultiSplitWindowController:Lcom/android/server/wm/MultiSplitWindowController;

    .line 2469
    invoke-virtual {v5}, Lcom/android/server/wm/MultiSplitWindowController;->isMultiSplitAnimationLocked()Z

    move-result v5

    if-eqz v5, :cond_213

    .line 2470
    iget-object v5, p0, Lcom/android/server/wm/Task;->mTmpPrevBounds:Landroid/graphics/Rect;

    .line 2471
    iget-object v11, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v11}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v11

    if-eqz v11, :cond_20e

    .line 2472
    const/4 v4, 0x6

    goto :goto_20f

    .line 2473
    :cond_20e
    nop

    .line 2470
    :goto_20f
    invoke-direct {p0, v5, v4}, Lcom/android/server/wm/Task;->initializeChangeTransition(Landroid/graphics/Rect;I)V

    goto :goto_24f

    .line 2476
    :cond_213
    iget-object v4, p0, Lcom/android/server/wm/Task;->mTmpPrevBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v4}, Lcom/android/server/wm/Task;->initializeChangeTransition(Landroid/graphics/Rect;)V

    goto :goto_24f

    .line 2479
    :cond_219
    if-eq v2, v10, :cond_230

    .line 2480
    invoke-direct {p0, v2, v10}, Lcom/android/server/wm/Task;->shouldStartSplitChangeTransition(II)Z

    move-result v4

    if-eqz v4, :cond_230

    .line 2481
    iget-object v4, p0, Lcom/android/server/wm/Task;->mTmpPrevBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v2}, Lcom/android/server/wm/Task;->isClosingSplitApp(I)Z

    move-result v11

    if-eqz v11, :cond_22b

    .line 2482
    const/4 v5, 0x2

    goto :goto_22c

    :cond_22b
    nop

    .line 2481
    :goto_22c
    invoke-direct {p0, v4, v5}, Lcom/android/server/wm/Task;->initializeChangeTransition(Landroid/graphics/Rect;I)V

    goto :goto_24f

    .line 2483
    :cond_230
    if-ne v2, v10, :cond_240

    iget-object v4, p0, Lcom/android/server/wm/Task;->mTmpPrevBounds:Landroid/graphics/Rect;

    .line 2484
    invoke-direct {p0, v4}, Lcom/android/server/wm/Task;->shouldStartResizeTransition(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_240

    .line 2485
    iget-object v4, p0, Lcom/android/server/wm/Task;->mTmpPrevBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v4, v5}, Lcom/android/server/wm/Task;->initializeChangeTransition(Landroid/graphics/Rect;I)V

    goto :goto_24f

    .line 2486
    :cond_240
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isChangePinnedToSplitSceen()Z

    move-result v4

    if-eqz v4, :cond_24f

    .line 2487
    invoke-static {v10}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result v4

    if-eqz v4, :cond_24f

    .line 2488
    invoke-virtual {p0, v7}, Lcom/android/server/wm/Task;->setChangePinnedToSplitSceen(Z)V

    .line 2494
    :cond_24f
    :goto_24f
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v4

    if-eqz v4, :cond_266

    .line 2495
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 2496
    .local v4, "currentBounds":Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_266

    .line 2497
    invoke-virtual {p0, v4}, Lcom/android/server/wm/Task;->setLastNonFullscreenBounds(Landroid/graphics/Rect;)V

    .line 2501
    .end local v4    # "currentBounds":Landroid/graphics/Rect;
    :cond_266
    invoke-direct {p0}, Lcom/android/server/wm/Task;->saveLaunchingStateIfNeeded()V

    .line 2502
    invoke-virtual {p0, v7}, Lcom/android/server/wm/Task;->updateTaskOrganizerState(Z)Z

    move-result v4

    .line 2505
    .local v4, "taskOrgChanged":Z
    if-nez v4, :cond_27c

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v5

    if-eqz v5, :cond_27c

    .line 2506
    iget-object v5, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v5, p0, v7}, Lcom/android/server/wm/TaskOrganizerController;->dispatchTaskInfoChanged(Lcom/android/server/wm/Task;Z)V

    .line 2510
    :cond_27c
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_USAGE_LOGGING:Z

    if-eqz v5, :cond_2ac

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isDexMode()Z

    move-result v5

    if-nez v5, :cond_2ac

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_2ac

    .line 2511
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_2ac

    if-nez v0, :cond_2ac

    if-eqz v1, :cond_2ac

    .line 2513
    nop

    .line 2514
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 2513
    const-string v7, "2000"

    invoke-static {v7, v5}, Lcom/samsung/android/core/CoreSALogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 2517
    :cond_2ac
    return-void
.end method

.method public onDescendantOrientationChanged(Landroid/os/IBinder;Lcom/android/server/wm/ConfigurationContainer;)Z
    .registers 5
    .param p1, "freezeDisplayToken"    # Landroid/os/IBinder;
    .param p2, "requestingContainer"    # Lcom/android/server/wm/ConfigurationContainer;

    .line 3802
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onDescendantOrientationChanged(Landroid/os/IBinder;Lcom/android/server/wm/ConfigurationContainer;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 3803
    return v1

    .line 3808
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 3809
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3810
    return v1

    .line 3812
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .registers 6
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 3823
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    .line 3824
    .local v0, "isRootTask":Z
    if-nez v0, :cond_9

    .line 3825
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->adjustBoundsForDisplayChangeIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    .line 3827
    :cond_9
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 3828
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 3829
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    goto :goto_1a

    :cond_19
    const/4 v1, -0x1

    .line 3830
    .local v1, "displayId":I
    :goto_1a
    iget-object v2, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskDisplayChanged(II)V

    .line 3833
    .end local v1    # "displayId":I
    :cond_27
    return-void
.end method

.method onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V
    .registers 12
    .param p1, "newParent"    # Lcom/android/server/wm/ConfigurationContainer;
    .param p2, "oldParent"    # Lcom/android/server/wm/ConfigurationContainer;

    .line 1388
    const/4 v0, 0x0

    if-eqz p1, :cond_b

    .line 1389
    move-object v1, p1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    goto :goto_c

    :cond_b
    move-object v1, v0

    .line 1390
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    :goto_c
    if-eqz p2, :cond_16

    .line 1391
    move-object v2, p2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    goto :goto_17

    :cond_16
    move-object v2, v0

    .line 1393
    .local v2, "oldDisplay":Lcom/android/server/wm/DisplayContent;
    :goto_17
    const/4 v3, -0x1

    if-eqz v2, :cond_1d

    iget v4, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    goto :goto_1e

    :cond_1d
    move v4, v3

    :goto_1e
    iput v4, p0, Lcom/android/server/wm/Task;->mPrevDisplayId:I

    .line 1395
    if-eqz p2, :cond_27

    if-nez p1, :cond_27

    .line 1396
    invoke-direct {p0, p2}, Lcom/android/server/wm/Task;->cleanUpResourcesForDestroy(Lcom/android/server/wm/ConfigurationContainer;)V

    .line 1399
    :cond_27
    if-eqz v1, :cond_3a

    .line 1408
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1409
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v5

    .line 1408
    invoke-virtual {v4, v5}, Landroid/app/WindowConfiguration;->setRotation(I)V

    .line 1412
    :cond_3a
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V

    .line 1420
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    if-nez v4, :cond_57

    iget-object v4, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v4, :cond_57

    .line 1421
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/wm/EventLogTags;->writeWmStackRemoved(I)V

    .line 1422
    iput-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1423
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 1426
    :cond_57
    if-eqz p2, :cond_8b

    .line 1427
    move-object v0, p2

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1428
    .local v0, "oldParentTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_74

    .line 1429
    sget-object v4, Lcom/android/server/wm/-$$Lambda$ABB1r3i-Ua4IQKhbebsmnEGpWd8;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ABB1r3i-Ua4IQKhbebsmnEGpWd8;

    const-class v5, Lcom/android/server/wm/ActivityRecord;

    .line 1431
    invoke-static {v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v5

    .line 1429
    invoke-static {v4, v0, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v4

    .line 1432
    .local v4, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p0, v4}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 1433
    invoke-interface {v4}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 1436
    .end local v4    # "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    :cond_74
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_8b

    if-eqz p1, :cond_82

    .line 1437
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v4

    if-nez v4, :cond_8b

    .line 1440
    :cond_82
    iget-object v4, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityUnpinned()V

    .line 1444
    .end local v0    # "oldParentTask":Lcom/android/server/wm/Task;
    :cond_8b
    const/4 v0, 0x0

    if-eqz p1, :cond_e3

    .line 1445
    move-object v4, p1

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 1446
    .local v4, "newParentTask":Lcom/android/server/wm/Task;
    if-eqz v4, :cond_ab

    .line 1447
    invoke-virtual {v4, v0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 1449
    .local v5, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_aa

    sget-object v6, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v6

    if-eqz v6, :cond_aa

    .line 1450
    const-string v6, "addedToTask"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/Task;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 1452
    .end local v5    # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_aa
    goto :goto_d6

    .line 1454
    :cond_ab
    if-eqz p2, :cond_d6

    .line 1455
    move-object v5, p2

    check-cast v5, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 1456
    .local v5, "oldParentTask":Lcom/android/server/wm/Task;
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 1457
    .local v6, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_d6

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v7

    if-eqz v7, :cond_d6

    .line 1458
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->inSplitScreenWindowingMode()Z

    move-result v7

    if-eqz v7, :cond_d6

    if-eqz v6, :cond_d6

    .line 1459
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v7

    sget-object v8, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v7, v8, :cond_d6

    iget-object v7, p0, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-nez v7, :cond_d6

    .line 1461
    iput-object v6, p0, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1467
    .end local v5    # "oldParentTask":Lcom/android/server/wm/Task;
    .end local v6    # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_d6
    :goto_d6
    iget-object v5, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v5, :cond_e3

    .line 1469
    :try_start_da
    iget-object v6, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    iget v7, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v5, v6, v7}, Landroid/service/voice/IVoiceInteractionSession;->taskStarted(Landroid/content/Intent;I)V
    :try_end_e1
    .catch Landroid/os/RemoteException; {:try_start_da .. :try_end_e1} :catch_e2

    .line 1471
    goto :goto_e3

    .line 1470
    :catch_e2
    move-exception v5

    .line 1476
    .end local v4    # "newParentTask":Lcom/android/server/wm/Task;
    :cond_e3
    :goto_e3
    if-nez p2, :cond_ea

    if-eqz p1, :cond_ea

    .line 1480
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;

    .line 1485
    :cond_ea
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateMinMaxSizeIfNeeded()V

    .line 1489
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wm/Task;->adjustBoundsForDisplayChangeIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    .line 1491
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->windowsAreScaleable()Z

    move-result v4

    if-eqz v4, :cond_103

    .line 1494
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forceWindowsScaleable(Z)V

    goto :goto_106

    .line 1496
    :cond_103
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forceWindowsScaleable(Z)V

    .line 1535
    :goto_106
    if-eqz p2, :cond_11c

    .line 1536
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_11c

    .line 1537
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isNonOrganizedHomeOrRecentsTask()Z

    move-result v0

    if-eqz v0, :cond_11c

    .line 1540
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastSurfacePosition:Landroid/graphics/Point;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Point;->set(II)V

    .line 1541
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateSurfacePosition()V

    .line 1545
    :cond_11c
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->updateUIDsPresentOnDisplay()V

    .line 1546
    return-void
.end method

.method onPictureInPictureParamsChanged()V
    .registers 3

    .line 5992
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 5997
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 5998
    invoke-virtual {v0}, Lcom/android/server/wm/TaskOrganizerController;->isDeferredSplitTaskOrganizerLocked()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 5999
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inSplitScreenSecondaryWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 6000
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/TaskOrganizerController;->dispatchTaskInfoChanged(Lcom/android/server/wm/Task;Z)V

    goto :goto_27

    .line 6004
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/TaskOrganizerController;->dispatchTaskInfoChanged(Lcom/android/server/wm/Task;Z)V

    .line 6008
    :cond_27
    :goto_27
    return-void
.end method

.method onSnapshotChanged(Landroid/app/ActivityManager$TaskSnapshot;)V
    .registers 4
    .param p1, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;

    .line 4486
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskSnapshotChanged(ILandroid/app/ActivityManager$TaskSnapshot;)V

    .line 4488
    return-void
.end method

.method onWindowFocusChanged(Z)V
    .registers 3
    .param p1, "hasFocus"    # Z

    .line 5988
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/Task;->updateShadowsRadius(ZLandroid/view/SurfaceControl$Transaction;)V

    .line 5989
    return-void
.end method

.method onlyHasTaskOverlayActivities(Z)Z
    .registers 8
    .param p1, "includeFinishing"    # Z

    .line 1894
    const/4 v0, 0x0

    .line 1895
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_7
    const/4 v3, 0x0

    if-ltz v1, :cond_28

    .line 1896
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 1897
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v4, :cond_15

    .line 1899
    return v3

    .line 1901
    :cond_15
    if-nez p1, :cond_1c

    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_1c

    .line 1902
    goto :goto_25

    .line 1904
    :cond_1c
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v5

    if-nez v5, :cond_23

    .line 1905
    return v3

    .line 1907
    :cond_23
    add-int/lit8 v0, v0, 0x1

    .line 1895
    .end local v4    # "r":Lcom/android/server/wm/ActivityRecord;
    :goto_25
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 1909
    .end local v1    # "i":I
    :cond_28
    if-lez v0, :cond_2b

    goto :goto_2c

    :cond_2b
    move v2, v3

    :goto_2c
    return v2
.end method

.method performClearTask(Ljava/lang/String;)V
    .registers 9
    .param p1, "reason"    # Ljava/lang/String;

    .line 1926
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-nez v0, :cond_f

    .line 1927
    new-instance v0, Lcom/android/server/wm/-$$Lambda$Task$iKnNpBBRFRHs1rtFSWGK99Fqn1E;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$Task$iKnNpBBRFRHs1rtFSWGK99Fqn1E;-><init>(Lcom/android/server/wm/Task;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    goto :goto_3c

    .line 1936
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/Task;->mToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1937
    new-instance v0, Lcom/android/server/wm/-$$Lambda$Task$0uL0RU611D7nrU5byJQm7iBsIdU;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$Task$0uL0RU611D7nrU5byJQm7iBsIdU;-><init>(Lcom/android/server/wm/Task;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 1938
    :goto_1c
    iget-object v0, p0, Lcom/android/server/wm/Task;->mToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 1939
    iget-object v0, p0, Lcom/android/server/wm/Task;->mToRemove:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    .line 1940
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_32

    goto :goto_1c

    .line 1941
    :cond_32
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;Z)I

    .line 1942
    .end local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    goto :goto_1c

    .line 1953
    :cond_3c
    :goto_3c
    return-void
.end method

.method performClearTaskForReuseLocked(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityRecord;
    .registers 5
    .param p1, "newR"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "launchFlags"    # I

    .line 1965
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 1966
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/Task;->performClearTaskLocked(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1967
    .local v0, "result":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 1968
    return-object v0
.end method

.method performClearTaskLocked()V
    .registers 2

    .line 1959
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 1960
    const-string v0, "clear-task-all"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->performClearTask(Ljava/lang/String;)V

    .line 1961
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 1962
    return-void
.end method

.method positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .registers 7
    .param p1, "position"    # I
    .param p2, "child"    # Lcom/android/server/wm/WindowContainer;
    .param p3, "includingParents"    # Z

    .line 3674
    invoke-direct {p0, p2, p1}, Lcom/android/server/wm/Task;->getAdjustedChildPosition(Lcom/android/server/wm/WindowContainer;I)I

    move-result p1

    .line 3675
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 3678
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_MOVEMENT:Z

    if-eqz v0, :cond_32

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "positionChildAt: child="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3681
    :cond_32
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_3d

    goto :goto_3e

    :cond_3d
    const/4 v1, 0x0

    :goto_3e
    move v0, v1

    .line 3682
    .local v0, "toTop":I
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 3683
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_4a

    .line 3684
    iget v2, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v2, v0, p1}, Lcom/android/server/wm/EventLogTags;->writeWmTaskMoved(III)V

    .line 3686
    :cond_4a
    return-void
.end method

.method positionChildAt(Lcom/android/server/wm/ActivityRecord;I)V
    .registers 5
    .param p1, "child"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "position"    # I

    .line 4461
    if-nez p1, :cond_a

    .line 4462
    const-string v0, "WindowManager"

    const-string v1, "Attempted to position of non-existing app"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4464
    return-void

    .line 4467
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 4468
    return-void
.end method

.method positionChildAtTop(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3
    .param p1, "child"    # Lcom/android/server/wm/ActivityRecord;

    .line 4457
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->positionChildAt(Lcom/android/server/wm/ActivityRecord;I)V

    .line 4458
    return-void
.end method

.method prepareFreezingBounds()V
    .registers 3

    .line 3882
    iget-object v0, p0, Lcom/android/server/wm/Task;->mPreparedFrozenBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3883
    iget-object v0, p0, Lcom/android/server/wm/Task;->mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 3884
    return-void
.end method

.method prepareSurfaces()V
    .registers 5

    .line 4630
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->resetDimStates()V

    .line 4631
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    .line 4632
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 4635
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 4636
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 4637
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_34

    .line 4640
    :cond_2e
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 4643
    :goto_34
    invoke-direct {p0}, Lcom/android/server/wm/Task;->isFocused()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/Task;->updateShadowsRadius(ZLandroid/view/SurfaceControl$Transaction;)V

    .line 4645
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/Dimmer;->updateDims(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 4646
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->scheduleAnimation()V

    .line 4648
    :cond_50
    return-void
.end method

.method preserveOrientationOnResize()Z
    .registers 3

    .line 3855
    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_e

    const/4 v1, 0x5

    if-eq v0, v1, :cond_e

    const/4 v1, 0x7

    if-ne v0, v1, :cond_c

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x1

    :goto_f
    return v0
.end method

.method removeChild(Lcom/android/server/wm/WindowContainer;)V
    .registers 3
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;

    .line 1809
    const-string/jumbo v0, "removeChild"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->removeChild(Lcom/android/server/wm/WindowContainer;Ljava/lang/String;)V

    .line 1810
    return-void
.end method

.method removeChild(Lcom/android/server/wm/WindowContainer;Ljava/lang/String;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "reason"    # Ljava/lang/String;

    .line 1815
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1816
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->removeStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V

    .line 1818
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 1819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeChild: r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not found in t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    return-void

    .line 1823
    :cond_3c
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_POP_OVER:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_51

    instance-of v0, p1, Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_51

    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->mCanBePopOver:Z

    if-eqz v0, :cond_51

    .line 1826
    iget v0, p0, Lcom/android/server/wm/Task;->mPopOverChildCnt:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/Task;->mPopOverChildCnt:I

    .line 1830
    :cond_51
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_MOVEMENT:Z

    if-eqz v0, :cond_74

    .line 1831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeChild: child="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " reason="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WindowManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    :cond_74
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 1835
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_86

    .line 1839
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 1842
    :cond_86
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 1843
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateEffectiveIntent()V

    .line 1848
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->onlyHasTaskOverlayActivities(Z)Z

    move-result v0

    if-eqz v0, :cond_109

    .line 1856
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1, p2}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V

    goto :goto_109

    .line 1859
    :cond_9c
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    if-nez v0, :cond_109

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-nez v0, :cond_109

    .line 1862
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_b1

    .line 1863
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/android/server/wm/ActivityStack;->removeChild(Lcom/android/server/wm/WindowContainer;Ljava/lang/String;)V

    .line 1865
    :cond_b1
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeChild: last r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " in t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1866
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v2

    .line 1865
    invoke-static {v0, v1, v2}, Lcom/android/server/wm/EventLogTags;->writeWmTaskRemoved(ILjava/lang/String;I)V

    .line 1869
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_ee

    .line 1870
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_ee

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 1871
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_109

    .line 1872
    :cond_ee
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inSplitScreenPrimaryWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_106

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppPairController:Lcom/android/server/wm/AppPairController;

    .line 1873
    invoke-virtual {v0}, Lcom/android/server/wm/AppPairController;->isLaunchingPairActivitiesLocked()Z

    move-result v0

    if-eqz v0, :cond_106

    .line 1874
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppPairController:Lcom/android/server/wm/AppPairController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppPairController;->deferDetachSplitScreenPrimaryStackLocked()V

    goto :goto_109

    .line 1877
    :cond_106
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->removeIfPossible()V

    .line 1886
    :cond_109
    :goto_109
    return-void
.end method

.method removeIfPossible()V
    .registers 4

    .line 867
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    .line 868
    .local v0, "isRootTask":Z
    if-nez v0, :cond_f

    .line 869
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/Task;)V

    .line 871
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->shouldDeferRemoval()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 872
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v1, :cond_32

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeTask: deferring removing taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :cond_32
    return-void

    .line 875
    :cond_33
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->removeImmediately()V

    .line 876
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 877
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskRemoved(I)V

    .line 879
    :cond_47
    return-void
.end method

.method removeImmediately()V
    .registers 4

    .line 3704
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeTask: removing taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3705
    :cond_1d
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 3706
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v1

    .line 3705
    const-string/jumbo v2, "removeTask"

    invoke-static {v0, v2, v1}, Lcom/android/server/wm/EventLogTags;->writeWmTaskRemoved(ILjava/lang/String;I)V

    .line 3708
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isSingleTaskInstance()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 3709
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->notifySingleTaskDisplayEmpty(I)V

    .line 3713
    :cond_3e
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setTaskOrganizer(Landroid/window/ITaskOrganizer;)Z

    .line 3715
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    .line 3716
    return-void
.end method

.method removedFromRecents()V
    .registers 4

    .line 1616
    invoke-direct {p0}, Lcom/android/server/wm/Task;->closeRecentsChain()V

    .line 1617
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v0, :cond_f

    .line 1618
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->inRecents:Z

    .line 1619
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    .line 1622
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->clearRootProcess()V

    .line 1631
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    iget v2, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskSnapshotController;->notifyTaskRemovedFromRecents(II)V

    .line 1633
    return-void
.end method

.method reparent(Lcom/android/server/wm/ActivityStack;IZLjava/lang/String;)V
    .registers 11
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "position"    # I
    .param p3, "moveParents"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    .line 3721
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/ActivityStack;IZZLjava/lang/String;)V

    .line 3722
    return-void
.end method

.method reparent(Lcom/android/server/wm/ActivityStack;IZZLjava/lang/String;)V
    .registers 10
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "position"    # I
    .param p3, "moveParents"    # Z
    .param p4, "swap"    # Z
    .param p5, "reason"    # Ljava/lang/String;

    .line 3726
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reParentTask: removing taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " from stack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3727
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3726
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3728
    :cond_29
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reParentTask:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3729
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v2

    .line 3728
    invoke-static {v0, v1, v2}, Lcom/android/server/wm/EventLogTags;->writeWmTaskRemoved(ILjava/lang/String;I)V

    .line 3732
    nop

    .line 3733
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isOrganized()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8f

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 3734
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeStandard()Z

    move-result v0

    if-nez v0, :cond_5e

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeAssistant()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 3736
    :cond_5e
    nop

    .line 3737
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideWindowingMode()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_68

    move v0, v2

    goto :goto_69

    :cond_68
    move v0, v1

    .line 3738
    .local v0, "clearOutWinMode":Z
    :goto_69
    if-nez p3, :cond_8a

    .line 3739
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inSplitScreenWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 3740
    const-string/jumbo v3, "sanitizeAndApplyHierarchyOp"

    invoke-virtual {v3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 3741
    const/4 v0, 0x1

    .line 3742
    const/high16 v3, -0x80000000

    if-eq p2, v3, :cond_81

    .line 3743
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->mTaskSwitchingInSplitMode:Z

    .line 3745
    :cond_81
    if-eqz p4, :cond_8a

    .line 3746
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTaskItemController:Lcom/android/server/wm/RecentTaskItemController;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/RecentTaskItemController;->onSplitScreenTaskSwapped(Lcom/android/server/wm/Task;)V

    .line 3750
    :cond_8a
    if-eqz v0, :cond_8f

    .line 3751
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 3756
    .end local v0    # "clearOutWinMode":Z
    :cond_8f
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    .line 3758
    invoke-virtual {p1, p2, p0, p3}, Lcom/android/server/wm/ActivityStack;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 3761
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mTaskSwitchingInSplitMode:Z

    if-eqz v0, :cond_9b

    .line 3762
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mTaskSwitchingInSplitMode:Z

    .line 3769
    :cond_9b
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mPreserveNonFloatingState:Z

    .line 3770
    return-void
.end method

.method reparent(Lcom/android/server/wm/ActivityStack;IIZZLjava/lang/String;)Z
    .registers 15
    .param p1, "preferredStack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "position"    # I
    .param p3, "moveStackMode"    # I
    .param p4, "animate"    # Z
    .param p5, "deferResume"    # Z
    .param p6, "reason"    # Ljava/lang/String;

    .line 990
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/ActivityStack;IIZZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method reparent(Lcom/android/server/wm/ActivityStack;IIZZZLjava/lang/String;)Z
    .registers 35
    .param p1, "preferredStack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "position"    # I
    .param p3, "moveStackMode"    # I
    .param p4, "animate"    # Z
    .param p5, "deferResume"    # Z
    .param p6, "schedulePictureInPictureModeChange"    # Z
    .param p7, "reason"    # Ljava/lang/String;

    .line 1016
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v12, p7

    iget-object v13, v1, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 1017
    .local v13, "supervisor":Lcom/android/server/wm/ActivityStackSupervisor;
    iget-object v14, v1, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1018
    .local v14, "root":Lcom/android/server/wm/RootWindowContainer;
    iget-object v0, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v15, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 1019
    .local v15, "windowManager":Lcom/android/server/wm/WindowManagerService;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v11

    .line 1020
    .local v11, "sourceStack":Lcom/android/server/wm/ActivityStack;
    const v0, 0x7fffffff

    const/4 v7, 0x0

    if-ne v3, v0, :cond_20

    const/4 v6, 0x1

    goto :goto_21

    :cond_20
    move v6, v7

    :goto_21
    invoke-virtual {v13, v1, v2, v6}, Lcom/android/server/wm/ActivityStackSupervisor;->getReparentTargetStack(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    .line 1022
    .local v6, "toStack":Lcom/android/server/wm/ActivityStack;
    if-ne v6, v11, :cond_28

    .line 1023
    return v7

    .line 1026
    :cond_28
    if-ne v1, v6, :cond_2b

    .line 1030
    return v7

    .line 1033
    :cond_2b
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->getDisplayId()I

    move-result v9

    invoke-virtual {v1, v9}, Lcom/android/server/wm/Task;->canBeLaunchedOnDisplay(I)Z

    move-result v9

    if-nez v9, :cond_36

    .line 1034
    return v7

    .line 1037
    :cond_36
    if-ne v3, v0, :cond_3a

    const/4 v0, 0x1

    goto :goto_3b

    :cond_3a
    move v0, v7

    :goto_3b
    move/from16 v16, v0

    .line 1038
    .local v16, "toTopOfStack":Z
    const/4 v0, 0x0

    if-eqz v16, :cond_61

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    if-eqz v9, :cond_61

    .line 1039
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    if-eqz v9, :cond_61

    .line 1041
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "reparent:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v7, v0, v9}, Lcom/android/server/wm/ActivityStack;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    .line 1048
    :cond_61
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v10

    .line 1049
    .local v10, "toStackWindowingMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    .line 1051
    .local v9, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v9, :cond_77

    .line 1052
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v7

    invoke-static {v7, v10}, Lcom/android/server/wm/Task;->replaceWindowsOnTaskMove(II)Z

    move-result v7

    if-eqz v7, :cond_77

    const/4 v7, 0x1

    goto :goto_78

    :cond_77
    const/4 v7, 0x0

    :goto_78
    move/from16 v17, v7

    .line 1053
    .local v17, "mightReplaceWindow":Z
    if-eqz v17, :cond_81

    .line 1062
    iget-object v7, v9, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-virtual {v15, v7, v5}, Lcom/android/server/wm/WindowManagerService;->setWillReplaceWindow(Landroid/os/IBinder;Z)V

    .line 1065
    :cond_81
    iget-object v7, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 1066
    const/16 v18, 0x1

    .line 1068
    .local v18, "kept":Z
    :try_start_88
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7
    :try_end_8c
    .catchall {:try_start_88 .. :try_end_8c} :catchall_1f1

    .line 1069
    .local v7, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v7, :cond_a6

    :try_start_8e
    invoke-virtual {v14, v11}, Lcom/android/server/wm/RootWindowContainer;->isTopDisplayFocusedStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v19

    if-eqz v19, :cond_a6

    .line 1070
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-ne v0, v7, :cond_a6

    const/4 v0, 0x1

    goto :goto_a7

    .line 1135
    .end local v7    # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_9c
    move-exception v0

    move-object v8, v9

    move-object/from16 v26, v11

    move-object v7, v15

    move-object v15, v6

    move-object v6, v14

    move v14, v10

    goto/16 :goto_1f9

    .line 1070
    .restart local v7    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_a6
    const/4 v0, 0x0

    .line 1071
    .local v0, "wasFocused":Z
    :goto_a7
    if-eqz v7, :cond_b1

    invoke-virtual {v11}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8
    :try_end_ad
    .catchall {:try_start_8e .. :try_end_ad} :catchall_9c

    if-ne v8, v7, :cond_b1

    const/4 v8, 0x1

    goto :goto_b2

    :cond_b1
    const/4 v8, 0x0

    :goto_b2
    move-object v2, v9

    .end local v9    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .local v2, "topActivity":Lcom/android/server/wm/ActivityRecord;
    move v9, v8

    .line 1072
    .local v9, "wasResumed":Z
    if-eqz v7, :cond_c8

    :try_start_b6
    iget-object v8, v11, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;
    :try_end_b8
    .catchall {:try_start_b6 .. :try_end_b8} :catchall_bc

    if-ne v8, v7, :cond_c8

    const/4 v8, 0x1

    goto :goto_c9

    .line 1135
    .end local v0    # "wasFocused":Z
    .end local v7    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v9    # "wasResumed":Z
    :catchall_bc
    move-exception v0

    move-object v8, v2

    move-object/from16 v26, v11

    move-object v7, v15

    move-object/from16 v2, p1

    move-object v15, v6

    move-object v6, v14

    move v14, v10

    goto/16 :goto_1f9

    .line 1072
    .restart local v0    # "wasFocused":Z
    .restart local v7    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v9    # "wasResumed":Z
    :cond_c8
    const/4 v8, 0x0

    :goto_c9
    move-object/from16 v21, v14

    move v14, v10

    .end local v10    # "toStackWindowingMode":I
    .local v14, "toStackWindowingMode":I
    .local v21, "root":Lcom/android/server/wm/RootWindowContainer;
    move v10, v8

    .line 1077
    .local v10, "wasPaused":Z
    if-eqz v7, :cond_e9

    :try_start_cf
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityStack;->isTopStackInDisplayArea()Z

    move-result v8

    if-eqz v8, :cond_e9

    .line 1078
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8
    :try_end_d9
    .catchall {:try_start_cf .. :try_end_d9} :catchall_dd

    if-ne v8, v7, :cond_e9

    const/4 v8, 0x1

    goto :goto_ea

    .line 1135
    .end local v0    # "wasFocused":Z
    .end local v7    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v9    # "wasResumed":Z
    .end local v10    # "wasPaused":Z
    :catchall_dd
    move-exception v0

    move-object v8, v2

    move-object/from16 v26, v11

    move-object v7, v15

    move-object/from16 v2, p1

    move-object v15, v6

    move-object/from16 v6, v21

    goto/16 :goto_1f9

    .line 1078
    .restart local v0    # "wasFocused":Z
    .restart local v7    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v9    # "wasResumed":Z
    .restart local v10    # "wasPaused":Z
    :cond_e9
    const/4 v8, 0x0

    :goto_ea
    move/from16 v22, v8

    .line 1080
    .local v22, "wasFront":Z
    if-eqz v4, :cond_f8

    const/4 v8, 0x1

    if-ne v4, v8, :cond_f6

    if-nez v0, :cond_f8

    if-eqz v22, :cond_f6

    goto :goto_f8

    :cond_f6
    const/4 v8, 0x0

    goto :goto_f9

    :cond_f8
    :goto_f8
    const/4 v8, 0x1

    .line 1084
    .local v8, "moveStackToFront":Z
    :goto_f9
    :try_start_f9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getRequestedOverrideWindowingMode()I

    move-result v23
    :try_end_fd
    .catchall {:try_start_f9 .. :try_end_fd} :catchall_1e6

    move/from16 v24, v23

    .line 1085
    .local v24, "currentWindowingMode":I
    move/from16 v23, v0

    move/from16 v0, v24

    .end local v24    # "currentWindowingMode":I
    .local v0, "currentWindowingMode":I
    .local v23, "wasFocused":Z
    if-eq v0, v14, :cond_13e

    .line 1086
    :try_start_105
    invoke-static {v14}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isSplitWindowingMode(I)Z

    move-result v24

    if-nez v24, :cond_115

    move/from16 v24, v0

    const/4 v0, 0x1

    .end local v0    # "currentWindowingMode":I
    .restart local v24    # "currentWindowingMode":I
    if-ne v14, v0, :cond_111

    goto :goto_118

    :cond_111
    move-object/from16 v25, v15

    const/4 v0, 0x0

    goto :goto_143

    .end local v24    # "currentWindowingMode":I
    .restart local v0    # "currentWindowingMode":I
    :cond_115
    move/from16 v24, v0

    const/4 v0, 0x1

    .line 1088
    .end local v0    # "currentWindowingMode":I
    .restart local v24    # "currentWindowingMode":I
    :goto_118
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->isOrganized()Z

    move-result v20

    if-eqz v20, :cond_12b

    .line 1091
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;
    :try_end_124
    .catchall {:try_start_105 .. :try_end_124} :catchall_132

    move-object/from16 v25, v15

    const/4 v15, 0x0

    .end local v15    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .local v25, "windowManager":Lcom/android/server/wm/WindowManagerService;
    :try_start_127
    invoke-virtual {v0, v15}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_12d

    .line 1088
    .end local v25    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .restart local v15    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    :cond_12b
    move-object/from16 v25, v15

    .line 1096
    .end local v15    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .restart local v25    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    :goto_12d
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/server/wm/Task;->setWindowingMode(I)V
    :try_end_131
    .catchall {:try_start_127 .. :try_end_131} :catchall_14c

    goto :goto_143

    .line 1135
    .end local v7    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v8    # "moveStackToFront":Z
    .end local v9    # "wasResumed":Z
    .end local v10    # "wasPaused":Z
    .end local v22    # "wasFront":Z
    .end local v23    # "wasFocused":Z
    .end local v24    # "currentWindowingMode":I
    .end local v25    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .restart local v15    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    :catchall_132
    move-exception v0

    move-object v8, v2

    move-object/from16 v26, v11

    move-object v7, v15

    move-object/from16 v2, p1

    move-object v15, v6

    move-object/from16 v6, v21

    .end local v15    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .restart local v25    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    goto/16 :goto_1f9

    .line 1085
    .end local v25    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .restart local v0    # "currentWindowingMode":I
    .restart local v7    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v8    # "moveStackToFront":Z
    .restart local v9    # "wasResumed":Z
    .restart local v10    # "wasPaused":Z
    .restart local v15    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .restart local v22    # "wasFront":Z
    .restart local v23    # "wasFocused":Z
    :cond_13e
    move/from16 v24, v0

    move-object/from16 v25, v15

    const/4 v0, 0x0

    .line 1100
    .end local v0    # "currentWindowingMode":I
    .end local v15    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .restart local v24    # "currentWindowingMode":I
    .restart local v25    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    :goto_143
    :try_start_143
    invoke-virtual {v1, v6, v3, v8, v12}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/ActivityStack;IZLjava/lang/String;)V
    :try_end_146
    .catchall {:try_start_143 .. :try_end_146} :catchall_1da

    .line 1102
    if-eqz p6, :cond_159

    .line 1104
    :try_start_148
    invoke-virtual {v13, v1, v11}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityStack;)V
    :try_end_14b
    .catchall {:try_start_148 .. :try_end_14b} :catchall_14c

    goto :goto_159

    .line 1135
    .end local v7    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v8    # "moveStackToFront":Z
    .end local v9    # "wasResumed":Z
    .end local v10    # "wasPaused":Z
    .end local v22    # "wasFront":Z
    .end local v23    # "wasFocused":Z
    .end local v24    # "currentWindowingMode":I
    :catchall_14c
    move-exception v0

    move-object v8, v2

    move-object v15, v6

    move-object/from16 v26, v11

    move-object/from16 v6, v21

    move-object/from16 v7, v25

    move-object/from16 v2, p1

    goto/16 :goto_1f9

    .line 1109
    .restart local v7    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v8    # "moveStackToFront":Z
    .restart local v9    # "wasResumed":Z
    .restart local v10    # "wasPaused":Z
    .restart local v22    # "wasFront":Z
    .restart local v23    # "wasFocused":Z
    .restart local v24    # "currentWindowingMode":I
    :cond_159
    :goto_159
    if-eqz v7, :cond_173

    .line 1110
    move-object v15, v6

    .end local v6    # "toStack":Lcom/android/server/wm/ActivityStack;
    .local v15, "toStack":Lcom/android/server/wm/ActivityStack;
    move v3, v0

    move-object v0, v7

    .end local v7    # "r":Lcom/android/server/wm/ActivityRecord;
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    move/from16 v20, v8

    const/4 v3, 0x1

    .end local v8    # "moveStackToFront":Z
    .local v20, "moveStackToFront":Z
    move-object/from16 v26, v11

    .end local v11    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .local v26, "sourceStack":Lcom/android/server/wm/ActivityStack;
    move-object/from16 v11, p7

    :try_start_165
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/ActivityStack;->moveToFrontAndResumeStateIfNeeded(Lcom/android/server/wm/ActivityRecord;ZZZLjava/lang/String;)V

    goto :goto_17a

    .line 1135
    .end local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v9    # "wasResumed":Z
    .end local v10    # "wasPaused":Z
    .end local v20    # "moveStackToFront":Z
    .end local v22    # "wasFront":Z
    .end local v23    # "wasFocused":Z
    .end local v24    # "currentWindowingMode":I
    :catchall_169
    move-exception v0

    move-object v8, v2

    move-object/from16 v6, v21

    move-object/from16 v7, v25

    move-object/from16 v2, p1

    goto/16 :goto_1f9

    .line 1109
    .end local v15    # "toStack":Lcom/android/server/wm/ActivityStack;
    .end local v26    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .restart local v6    # "toStack":Lcom/android/server/wm/ActivityStack;
    .restart local v7    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v8    # "moveStackToFront":Z
    .restart local v9    # "wasResumed":Z
    .restart local v10    # "wasPaused":Z
    .restart local v11    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .restart local v22    # "wasFront":Z
    .restart local v23    # "wasFocused":Z
    .restart local v24    # "currentWindowingMode":I
    :cond_173
    move-object v15, v6

    move-object v0, v7

    move/from16 v20, v8

    move-object/from16 v26, v11

    const/4 v3, 0x1

    .line 1113
    .end local v6    # "toStack":Lcom/android/server/wm/ActivityStack;
    .end local v7    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v8    # "moveStackToFront":Z
    .end local v11    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .restart local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v15    # "toStack":Lcom/android/server/wm/ActivityStack;
    .restart local v20    # "moveStackToFront":Z
    .restart local v26    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    :goto_17a
    if-nez v5, :cond_183

    .line 1114
    iget-object v6, v1, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v6, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_183
    .catchall {:try_start_165 .. :try_end_183} :catchall_169

    .line 1119
    :cond_183
    :try_start_183
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityStack;->prepareFreezingTaskBounds()V

    .line 1121
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v6
    :try_end_18a
    .catchall {:try_start_183 .. :try_end_18a} :catchall_1d1

    .line 1128
    .local v6, "configBounds":Landroid/graphics/Rect;
    const/4 v7, 0x3

    if-ne v14, v7, :cond_194

    if-ne v4, v3, :cond_194

    .line 1132
    :try_start_18f
    iget-object v7, v1, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v7, v12}, Lcom/android/server/wm/ActivityStackSupervisor;->moveRecentsStackToFront(Ljava/lang/String;)V
    :try_end_194
    .catchall {:try_start_18f .. :try_end_194} :catchall_169

    .line 1135
    .end local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v6    # "configBounds":Landroid/graphics/Rect;
    .end local v9    # "wasResumed":Z
    .end local v10    # "wasPaused":Z
    .end local v20    # "moveStackToFront":Z
    .end local v22    # "wasFront":Z
    .end local v23    # "wasFocused":Z
    .end local v24    # "currentWindowingMode":I
    :cond_194
    iget-object v0, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1136
    nop

    .line 1138
    if-eqz v17, :cond_1a6

    .line 1142
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    xor-int/lit8 v6, v18, 0x1

    move-object/from16 v7, v25

    .end local v25    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .local v7, "windowManager":Lcom/android/server/wm/WindowManagerService;
    invoke-virtual {v7, v0, v6}, Lcom/android/server/wm/WindowManagerService;->scheduleClearWillReplaceWindows(Landroid/os/IBinder;Z)V

    goto :goto_1a8

    .line 1138
    .end local v7    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .restart local v25    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    :cond_1a6
    move-object/from16 v7, v25

    .line 1145
    .end local v25    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .restart local v7    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    :goto_1a8
    if-nez p5, :cond_1ba

    .line 1148
    if-nez v17, :cond_1ae

    move v8, v3

    goto :goto_1af

    :cond_1ae
    const/4 v8, 0x0

    :goto_1af
    move-object/from16 v6, v21

    const/4 v0, 0x0

    const/4 v9, 0x0

    .end local v21    # "root":Lcom/android/server/wm/RootWindowContainer;
    .local v6, "root":Lcom/android/server/wm/RootWindowContainer;
    invoke-virtual {v6, v0, v9, v8}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1149
    invoke-virtual {v6}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    goto :goto_1bd

    .line 1145
    .end local v6    # "root":Lcom/android/server/wm/RootWindowContainer;
    .restart local v21    # "root":Lcom/android/server/wm/RootWindowContainer;
    :cond_1ba
    move-object/from16 v6, v21

    const/4 v9, 0x0

    .line 1153
    .end local v21    # "root":Lcom/android/server/wm/RootWindowContainer;
    .restart local v6    # "root":Lcom/android/server/wm/RootWindowContainer;
    :goto_1bd
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    iget-object v8, v1, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1154
    invoke-virtual {v8}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v8

    .line 1153
    invoke-virtual {v13, v1, v0, v8, v15}, Lcom/android/server/wm/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityStack;)V

    .line 1156
    move-object v8, v2

    move-object/from16 v2, p1

    .end local v2    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .local v8, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-ne v2, v15, :cond_1d0

    move v9, v3

    :cond_1d0
    return v9

    .line 1135
    .end local v6    # "root":Lcom/android/server/wm/RootWindowContainer;
    .end local v7    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .end local v8    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v2    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v21    # "root":Lcom/android/server/wm/RootWindowContainer;
    .restart local v25    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    :catchall_1d1
    move-exception v0

    move-object v8, v2

    move-object/from16 v6, v21

    move-object/from16 v7, v25

    move-object/from16 v2, p1

    .end local v2    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v21    # "root":Lcom/android/server/wm/RootWindowContainer;
    .end local v25    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .restart local v6    # "root":Lcom/android/server/wm/RootWindowContainer;
    .restart local v7    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .restart local v8    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    goto :goto_1f9

    .end local v7    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .end local v8    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v15    # "toStack":Lcom/android/server/wm/ActivityStack;
    .end local v26    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .restart local v2    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .local v6, "toStack":Lcom/android/server/wm/ActivityStack;
    .restart local v11    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .restart local v21    # "root":Lcom/android/server/wm/RootWindowContainer;
    .restart local v25    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    :catchall_1da
    move-exception v0

    move-object v8, v2

    move-object v15, v6

    move-object/from16 v26, v11

    move-object/from16 v6, v21

    move-object/from16 v7, v25

    move-object/from16 v2, p1

    .end local v2    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v11    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .end local v21    # "root":Lcom/android/server/wm/RootWindowContainer;
    .end local v25    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .local v6, "root":Lcom/android/server/wm/RootWindowContainer;
    .restart local v7    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .restart local v8    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v15    # "toStack":Lcom/android/server/wm/ActivityStack;
    .restart local v26    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    goto :goto_1f9

    .end local v7    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .end local v8    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v26    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .restart local v2    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .local v6, "toStack":Lcom/android/server/wm/ActivityStack;
    .restart local v11    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .local v15, "windowManager":Lcom/android/server/wm/WindowManagerService;
    .restart local v21    # "root":Lcom/android/server/wm/RootWindowContainer;
    :catchall_1e6
    move-exception v0

    move-object v8, v2

    move-object/from16 v26, v11

    move-object v7, v15

    move-object/from16 v2, p1

    move-object v15, v6

    move-object/from16 v6, v21

    .end local v2    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v11    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .end local v21    # "root":Lcom/android/server/wm/RootWindowContainer;
    .local v6, "root":Lcom/android/server/wm/RootWindowContainer;
    .restart local v7    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .restart local v8    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .local v15, "toStack":Lcom/android/server/wm/ActivityStack;
    .restart local v26    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    goto :goto_1f9

    .end local v7    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .end local v8    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v26    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .local v6, "toStack":Lcom/android/server/wm/ActivityStack;
    .local v9, "topActivity":Lcom/android/server/wm/ActivityRecord;
    .local v10, "toStackWindowingMode":I
    .restart local v11    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .local v14, "root":Lcom/android/server/wm/RootWindowContainer;
    .local v15, "windowManager":Lcom/android/server/wm/WindowManagerService;
    :catchall_1f1
    move-exception v0

    move-object v8, v9

    move-object/from16 v26, v11

    move-object v7, v15

    move-object v15, v6

    move-object v6, v14

    move v14, v10

    .end local v9    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v10    # "toStackWindowingMode":I
    .end local v11    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .local v6, "root":Lcom/android/server/wm/RootWindowContainer;
    .restart local v7    # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .restart local v8    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .local v14, "toStackWindowingMode":I
    .local v15, "toStack":Lcom/android/server/wm/ActivityStack;
    .restart local v26    # "sourceStack":Lcom/android/server/wm/ActivityStack;
    :goto_1f9
    iget-object v3, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1136
    throw v0
.end method

.method reparent(Lcom/android/server/wm/ActivityStack;ZIZZLjava/lang/String;)Z
    .registers 16
    .param p1, "preferredStack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "toTop"    # Z
    .param p3, "moveStackMode"    # I
    .param p4, "animate"    # Z
    .param p5, "deferResume"    # Z
    .param p6, "reason"    # Ljava/lang/String;

    .line 971
    if-eqz p2, :cond_6

    const v0, 0x7fffffff

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    move v3, v0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/ActivityStack;IIZZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method reparent(Lcom/android/server/wm/ActivityStack;ZIZZZLjava/lang/String;)Z
    .registers 17
    .param p1, "preferredStack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "toTop"    # Z
    .param p3, "moveStackMode"    # I
    .param p4, "animate"    # Z
    .param p5, "deferResume"    # Z
    .param p6, "schedulePictureInPictureModeChange"    # Z
    .param p7, "reason"    # Ljava/lang/String;

    .line 982
    if-eqz p2, :cond_6

    const v0, 0x7fffffff

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    move v3, v0

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/ActivityStack;IIZZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected reparentSurfaceControl(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "newParent"    # Landroid/view/SurfaceControl;

    .line 5786
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5787
    return-void

    .line 5789
    :cond_d
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->reparentSurfaceControl(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 5790
    return-void
.end method

.method resetPendingDexHelpMode()V
    .registers 2

    .line 6430
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setPendingDexHelpMode(I)V

    .line 6431
    return-void
.end method

.method resetPendingDexNonResizeableAppRestartHelpMode()V
    .registers 2

    .line 6448
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setPendingDexNonResizeableAppRestartHelpMode(I)V

    .line 6449
    return-void
.end method

.method resize(FF)V
    .registers 7
    .param p1, "scaleW"    # F
    .param p2, "scaleH"    # F

    .line 4103
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_b

    cmpl-float v1, p2, v0

    if-nez v1, :cond_b

    .line 4104
    return-void

    .line 4106
    :cond_b
    iget-object v1, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_65

    .line 4107
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_65

    .line 4108
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4109
    cmpl-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    if-eqz v1, :cond_3c

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 4110
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 4111
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 4113
    :cond_3c
    cmpl-float v0, p2, v0

    if-eqz v0, :cond_5a

    invoke-static {p2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 4114
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 4115
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 4121
    :cond_5a
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->adjustAspectRatioIfNeeded(Landroid/graphics/Rect;)V

    .line 4123
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/wm/Task;->resize(Landroid/graphics/Rect;IZ)Z

    .line 4125
    :cond_65
    return-void
.end method

.method resize(ZZ)V
    .registers 4
    .param p1, "relayout"    # Z
    .param p2, "forced"    # Z

    .line 3816
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;Z)I

    move-result v0

    if-eqz v0, :cond_13

    if-eqz p1, :cond_13

    .line 3817
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 3819
    :cond_13
    return-void
.end method

.method resize(Landroid/graphics/Rect;IZ)Z
    .registers 13
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "resizeMode"    # I
    .param p3, "preserveWindow"    # Z

    .line 892
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 895
    and-int/lit8 v0, p2, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    .line 897
    .local v0, "forced":Z
    :goto_e
    :try_start_e
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_2a

    .line 901
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 902
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v3

    if-nez v3, :cond_23

    .line 904
    iget-object v3, p0, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3, p0, v4, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->restoreRecentTaskLocked(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Z)Z
    :try_end_23
    .catchall {:try_start_e .. :try_end_23} :catchall_a4

    .line 906
    :cond_23
    nop

    .line 963
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 906
    return v1

    .line 909
    :cond_2a
    :try_start_2a
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task;->canResizeToBounds(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_33

    .line 912
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->adjustAspectRatioIfNeeded(Landroid/graphics/Rect;)V

    .line 924
    :cond_33
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resizeTask_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v5, 0x20

    invoke-static {v5, v6, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 926
    const/4 v3, 0x0

    .line 927
    .local v3, "updatedConfig":Z
    iget-object v7, p0, Lcom/android/server/wm/Task;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 928
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    move-result v7

    if-eqz v7, :cond_68

    .line 929
    iget-object v7, p0, Lcom/android/server/wm/Task;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v7

    xor-int/2addr v1, v7

    move v3, v1

    .line 934
    :cond_68
    const/4 v1, 0x1

    .line 935
    .local v1, "kept":Z
    if-eqz v3, :cond_94

    .line 936
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    .line 937
    .local v7, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v7, :cond_94

    .line 938
    invoke-virtual {v7, v2, p3}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    move-result v8

    move v1, v8

    .line 946
    iget-object v8, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v8, v7, v2, p3}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 947
    if-nez v1, :cond_83

    .line 948
    iget-object v2, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    goto :goto_94

    .line 950
    :cond_83
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->isFocusedStackOnDisplay()Z

    move-result v2

    if-eqz v2, :cond_94

    .line 951
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/server/wm/ActivityStack;->executeAppTransition(Landroid/app/ActivityOptions;)V

    .line 956
    .end local v7    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_94
    :goto_94
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/Task;->resize(ZZ)V

    .line 958
    invoke-direct {p0}, Lcom/android/server/wm/Task;->saveLaunchingStateIfNeeded()V

    .line 960
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_9d
    .catchall {:try_start_2a .. :try_end_9d} :catchall_a4

    .line 961
    nop

    .line 963
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 961
    return v1

    .line 963
    .end local v0    # "forced":Z
    .end local v1    # "kept":Z
    .end local v3    # "updatedConfig":Z
    :catchall_a4
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 964
    throw v0
.end method

.method resolveOverrideConfiguration(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 3175
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3176
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->resolveOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 3178
    nop

    .line 3179
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 3183
    .local v0, "windowingMode":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3f

    if-nez v0, :cond_3f

    .line 3184
    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    .line 3185
    .local v1, "parentWindowingMode":I
    invoke-static {v1}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 3186
    move v2, v1

    goto :goto_35

    :cond_34
    const/4 v2, 0x1

    :goto_35
    move v0, v2

    .line 3187
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2, v0}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 3190
    .end local v1    # "parentWindowingMode":I
    :cond_3f
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 3191
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/Task;->resolveLeafOnlyOverrideConfigs(Landroid/content/res/Configuration;Landroid/graphics/Rect;)V

    .line 3193
    :cond_4a
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/Task;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 3194
    return-void
.end method

.method returnsToHomeStack()Z
    .registers 6

    .line 1367
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_32

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_32

    .line 1368
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    const/4 v2, 0x1

    if-eqz v0, :cond_24

    .line 1369
    const v3, 0x10004000

    .line 1370
    .local v3, "returnHomeFlags":I
    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const v4, 0x10004000

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_23

    move v1, v2

    :cond_23
    return v1

    .line 1372
    .end local v3    # "returnHomeFlags":I
    :cond_24
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBottomMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1373
    .local v0, "bottomTask":Lcom/android/server/wm/Task;
    if-eq v0, p0, :cond_31

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->returnsToHomeStack()Z

    move-result v3

    if-eqz v3, :cond_31

    move v1, v2

    :cond_31
    return v1

    .line 1367
    .end local v0    # "bottomTask":Lcom/android/server/wm/Task;
    :cond_32
    :goto_32
    return v1
.end method

.method reuseAsLeafTask(Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/Task;
    .registers 9
    .param p1, "_voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p2, "_voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "info"    # Landroid/content/pm/ActivityInfo;
    .param p5, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 818
    iput-object p1, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 819
    iput-object p2, p0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 820
    invoke-virtual {p0, p5, p3, p4}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 821
    invoke-virtual {p0, p4}, Lcom/android/server/wm/Task;->setMinDimensions(Landroid/content/pm/ActivityInfo;)V

    .line 829
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v2, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskCreated(ILandroid/content/ComponentName;)V

    .line 830
    return-object p0
.end method

.method saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 7
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5411
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Saving task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5413
    :cond_1a
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "task_id"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5414
    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_35

    .line 5415
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "real_activity"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5417
    :cond_35
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->realActivitySuspended:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "real_activity_suspended"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5418
    iget-object v0, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_4f

    .line 5419
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "orig_activity"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5425
    :cond_4f
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    const-string v2, "@"

    const-string/jumbo v3, "root_affinity"

    if-eqz v0, :cond_70

    .line 5426
    const-string v4, "affinity"

    invoke-interface {p1, v1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5427
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7a

    .line 5428
    iget-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_6c

    move-object v2, v0

    :cond_6c
    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_7a

    .line 5430
    :cond_70
    iget-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_7a

    .line 5431
    if-eqz v0, :cond_77

    move-object v2, v0

    :cond_77
    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5433
    :cond_7a
    :goto_7a
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    if-eqz v0, :cond_84

    .line 5434
    const-string/jumbo v2, "window_layout_affinity"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5436
    :cond_84
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->rootWasReset:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "root_has_reset"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5437
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "auto_remove_recents"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5438
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->askedCompatMode:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "asked_compat_mode"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5439
    iget v0, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "user_id"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5440
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "user_setup_complete"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5441
    iget v0, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "effective_uid"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5442
    iget-wide v2, p0, Lcom/android/server/wm/Task;->mLastTimeMoved:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "last_time_moved"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5443
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "never_relinquish_identity"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5444
    iget-object v0, p0, Lcom/android/server/wm/Task;->lastDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_ef

    .line 5445
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "last_description"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5447
    :cond_ef
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v0

    if-eqz v0, :cond_fc

    .line 5448
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$TaskDescription;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 5450
    :cond_fc
    iget v0, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskColor:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "task_affiliation_color"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5451
    iget v0, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "task_affiliation"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5452
    iget v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "prev_affiliation"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5453
    iget v0, p0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "next_affiliation"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5454
    iget v0, p0, Lcom/android/server/wm/Task;->mCallingUid:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "calling_uid"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5455
    iget-object v0, p0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    const-string v2, ""

    if-nez v0, :cond_13e

    move-object v0, v2

    :cond_13e
    const-string v3, "calling_package"

    invoke-interface {p1, v1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5456
    nop

    .line 5457
    iget-object v0, p0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    if-nez v0, :cond_149

    goto :goto_14a

    :cond_149
    move-object v2, v0

    .line 5456
    :goto_14a
    const-string v0, "calling_feature_id"

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5458
    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "resize_mode"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5459
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    .line 5460
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .line 5459
    const-string/jumbo v2, "supports_picture_in_picture"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5461
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_176

    .line 5462
    nop

    .line 5463
    invoke-virtual {v0}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 5462
    const-string/jumbo v2, "non_fullscreen_bounds"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5465
    :cond_176
    iget v0, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "min_width"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5466
    iget v0, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "min_height"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5467
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "persist_task_version"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5470
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DEDICATED_MEMORY:Z

    if-eqz v0, :cond_1b4

    .line 5471
    iget-object v0, p0, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    if-eqz v0, :cond_1a7

    .line 5472
    const-string/jumbo v2, "host_process_name"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5474
    :cond_1a7
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    if-eqz v0, :cond_1b4

    .line 5475
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "dedicated_task"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5480
    :cond_1b4
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1c5

    .line 5481
    const-string v0, "affinity_intent"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5482
    iget-object v2, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 5483
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5486
    :cond_1c5
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_1d7

    .line 5487
    const-string/jumbo v0, "intent"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5488
    iget-object v2, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 5489
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5492
    :cond_1d7
    sput-object v1, Lcom/android/server/wm/Task;->sTmpException:Ljava/lang/Exception;

    .line 5493
    sget-object v0, Lcom/android/server/wm/-$$Lambda$Task$OQmaRDKXdgA0v6VfNwTX7wOkwBs;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$OQmaRDKXdgA0v6VfNwTX7wOkwBs;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 5494
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBottomMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 5493
    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainFunction(Lcom/android/internal/util/function/TriFunction;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledFunction;

    move-result-object v0

    .line 5495
    .local v0, "f":Lcom/android/internal/util/function/pooled/PooledFunction;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Function;)Z

    .line 5496
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledFunction;->recycle()V

    .line 5497
    sget-object v1, Lcom/android/server/wm/Task;->sTmpException:Ljava/lang/Exception;

    if-nez v1, :cond_1f4

    .line 5500
    return-void

    .line 5498
    :cond_1f4
    throw v1
.end method

.method setActivityWindowingMode(I)V
    .registers 5
    .param p1, "windowingMode"    # I

    .line 6044
    sget-object v0, Lcom/android/server/wm/-$$Lambda$eT9SjQHKmQJBvlyYh6oQCJNBjSE;->INSTANCE:Lcom/android/server/wm/-$$Lambda$eT9SjQHKmQJBvlyYh6oQCJNBjSE;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 6045
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 6044
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    .line 6046
    .local v0, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 6047
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 6048
    return-void
.end method

.method setAliasManagedTask()V
    .registers 2

    .line 6763
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mIsAliasManaged:Z

    .line 6764
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)I
    .registers 5
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 3786
    const/4 v0, 0x0

    .line 3787
    .local v0, "rotation":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 3788
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    .line 3789
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    :goto_11
    if-eqz v1, :cond_19

    .line 3790
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    iget v0, v2, Landroid/view/DisplayInfo;->rotation:I

    .line 3793
    :cond_19
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setBounds(Landroid/graphics/Rect;)I

    move-result v2

    .line 3794
    .local v2, "boundsChange":I
    iput v0, p0, Lcom/android/server/wm/Task;->mRotation:I

    .line 3795
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateSurfacePosition()V

    .line 3796
    return v2
.end method

.method public setBounds(Landroid/graphics/Rect;Z)I
    .registers 6
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "forceResize"    # Z

    .line 3773
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    move-result v0

    .line 3775
    .local v0, "boundsChanged":I
    if-eqz p2, :cond_11

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_11

    .line 3776
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->onResize()V

    .line 3777
    or-int/lit8 v1, v0, 0x2

    return v1

    .line 3780
    :cond_11
    return v0
.end method

.method setCanAffectSystemUiFlags(Z)V
    .registers 2
    .param p1, "canAffectSystemUiFlags"    # Z

    .line 4586
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mCanAffectSystemUiFlags:Z

    .line 4587
    return-void
.end method

.method setChangePinnedToSplitSceen(Z)V
    .registers 2
    .param p1, "change"    # Z

    .line 6572
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mChangePinnedToSplitScreen:Z

    .line 6573
    return-void
.end method

.method setDragResizing(ZI)V
    .registers 6
    .param p1, "dragResizing"    # Z
    .param p2, "dragResizeMode"    # I

    .line 3973
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDragResizing:Z

    if-eq v0, p1, :cond_3b

    .line 3975
    if-eqz p1, :cond_34

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/wm/DragResizeMode;->isModeAllowedForStack(Lcom/android/server/wm/ActivityStack;I)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_34

    .line 3976
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Drag resize mode not allow for stack stackId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3977
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dragResizeMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3979
    :cond_34
    :goto_34
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mDragResizing:Z

    .line 3980
    iput p2, p0, Lcom/android/server/wm/Task;->mDragResizeMode:I

    .line 3981
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->resetDragResizingChangeReported()V

    .line 3983
    :cond_3b
    return-void
.end method

.method setFirstAddChild(Z)V
    .registers 2
    .param p1, "first"    # Z

    .line 6771
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->nowFirstAddChild:Z

    .line 6772
    return-void
.end method

.method setForceHidden(IZ)Z
    .registers 6
    .param p1, "flags"    # I
    .param p2, "set"    # Z

    .line 6055
    iget v0, p0, Lcom/android/server/wm/Task;->mForceHiddenFlags:I

    .line 6056
    .local v0, "newFlags":I
    if-eqz p2, :cond_6

    .line 6057
    or-int/2addr v0, p1

    goto :goto_8

    .line 6059
    :cond_6
    not-int v1, p1

    and-int/2addr v0, v1

    .line 6061
    :goto_8
    iget v1, p0, Lcom/android/server/wm/Task;->mForceHiddenFlags:I

    if-ne v1, v0, :cond_e

    .line 6062
    const/4 v1, 0x0

    return v1

    .line 6064
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v1

    .line 6065
    .local v1, "wasHidden":Z
    iput v0, p0, Lcom/android/server/wm/Task;->mForceHiddenFlags:I

    .line 6066
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v2

    if-eq v1, v2, :cond_27

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isTopActivityFocusable()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 6070
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/server/wm/TaskDisplayArea;->resetPreferredTopFocusableRootTaskIfNeeded(Lcom/android/server/wm/Task;)V

    .line 6072
    :cond_27
    const/4 v2, 0x1

    return v2
.end method

.method setForceResumeWhilePause(Z)V
    .registers 2
    .param p1, "force"    # Z

    .line 6779
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mForceResumeWhilePause:Z

    .line 6780
    return-void
.end method

.method setForceShowForAllUsers(Z)V
    .registers 2
    .param p1, "forceShowForAllUsers"    # Z

    .line 4148
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mForceShowForAllUsers:Z

    .line 4149
    return-void
.end method

.method setHasBeenVisible(Z)V
    .registers 5
    .param p1, "hasBeenVisible"    # Z

    .line 5793
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mHasBeenVisible:Z

    .line 5794
    .local v0, "prevHasBeenVisible":Z
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mHasBeenVisible:Z

    .line 5795
    if-eqz p1, :cond_2f

    .line 5800
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-nez v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz v1, :cond_1e

    if-nez v0, :cond_1e

    .line 5801
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 5802
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->commitPendingTransaction()V

    .line 5805
    :cond_1e
    invoke-direct {p0}, Lcom/android/server/wm/Task;->sendTaskAppeared()V

    .line 5806
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 5807
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->setHasBeenVisible(Z)V

    .line 5810
    :cond_2f
    return-void
.end method

.method setInitialSurfaceControlProperties(Landroid/view/SurfaceControl$Builder;)V
    .registers 5
    .param p1, "b"    # Landroid/view/SurfaceControl$Builder;

    .line 4319
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->setEffectLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    .line 4320
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setInitialSurfaceControlProperties(Landroid/view/SurfaceControl$Builder;)V

    .line 4321
    return-void
.end method

.method setIntent(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1213
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 1214
    return-void
.end method

.method setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "info"    # Landroid/content/pm/ActivityInfo;

    .line 1224
    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iput v0, p0, Lcom/android/server/wm/Task;->mCallingUid:I

    .line 1225
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    .line 1226
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    .line 1227
    if-eqz p2, :cond_10

    move-object v0, p2

    goto :goto_12

    :cond_10
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    :goto_12
    if-eqz p3, :cond_16

    move-object v1, p3

    goto :goto_18

    :cond_16
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    :goto_18
    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/Task;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 1228
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task;->setLockTaskAuth(Lcom/android/server/wm/ActivityRecord;)V

    .line 1230
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1231
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v0, :cond_2d

    .line 1232
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 1233
    .local v1, "t":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_2d

    .line 1234
    invoke-virtual {v1, p1}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 1237
    .end local v1    # "t":Lcom/android/server/wm/Task;
    :cond_2d
    return-void
.end method

.method setLastMetaKeyBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 5116
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mLastMetaKeyBounds:Landroid/graphics/Rect;

    .line 5117
    return-void
.end method

.method setLastMinimizedDisplayType(I)V
    .registers 2
    .param p1, "displayDeviceType"    # I

    .line 6793
    iput p1, p0, Lcom/android/server/wm/Task;->mLastMinimizedDisplayType:I

    .line 6794
    return-void
.end method

.method setLastNonFullscreenBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 2283
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_c

    .line 2284
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    goto :goto_f

    .line 2286
    :cond_c
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2288
    :goto_f
    return-void
.end method

.method setLockTaskAuth()V
    .registers 2

    .line 2033
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->setLockTaskAuth(Lcom/android/server/wm/ActivityRecord;)V

    .line 2034
    return-void
.end method

.method setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 6016
    invoke-direct {p0, p1, p0}, Lcom/android/server/wm/Task;->setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/Task;)V

    .line 6017
    sget-object v0, Lcom/android/server/wm/-$$Lambda$6CGpg-bvz7DUll5JEZwd1mT8fPQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$6CGpg-bvz7DUll5JEZwd1mT8fPQ;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 6018
    return-void
.end method

.method setMinDimensions(Landroid/content/pm/ActivityInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .line 1343
    if-eqz p1, :cond_13

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v0, :cond_13

    .line 1344
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    iput v0, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    .line 1345
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    iput v0, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    goto :goto_18

    .line 1347
    :cond_13
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    .line 1348
    iput v0, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    .line 1350
    :goto_18
    return-void
.end method

.method setMinimized(Z)V
    .registers 5
    .param p1, "animate"    # Z

    .line 6605
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mIsMinimized:Z

    if-eqz v0, :cond_5

    .line 6606
    return-void

    .line 6608
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mIsMinimized:Z

    .line 6610
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    iget-boolean v2, p0, Lcom/android/server/wm/Task;->mIsMinimized:Z

    invoke-virtual {v1, p0, v2}, Lcom/android/server/wm/FreeformController;->notifyFreeformMinimizeStateChanged(Lcom/android/server/wm/Task;Z)V

    .line 6614
    if-eqz p1, :cond_31

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-nez v1, :cond_31

    iget-object v1, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v1, :cond_31

    iget-object v1, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 6615
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2c

    goto :goto_31

    .line 6619
    :cond_2c
    if-eqz p1, :cond_38

    .line 6620
    iput v0, p0, Lcom/android/server/wm/Task;->mMinimizeAnimState:I

    goto :goto_38

    .line 6617
    :cond_31
    :goto_31
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/FreeformController;->notifyFreeformMinimizeAnimationEnd(Lcom/android/server/wm/Task;)V

    .line 6632
    :cond_38
    :goto_38
    return-void
.end method

.method setNextAffiliate(Lcom/android/server/wm/Task;)V
    .registers 3
    .param p1, "nextAffiliate"    # Lcom/android/server/wm/Task;

    .line 1382
    iput-object p1, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    .line 1383
    if-nez p1, :cond_6

    const/4 v0, -0x1

    goto :goto_8

    :cond_6
    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    :goto_8
    iput v0, p0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    .line 1384
    return-void
.end method

.method setPairTask(Lcom/android/server/wm/PairTask;)V
    .registers 2
    .param p1, "pairTask"    # Lcom/android/server/wm/PairTask;

    .line 6753
    iput-object p1, p0, Lcom/android/server/wm/Task;->mPairTask:Lcom/android/server/wm/PairTask;

    .line 6754
    return-void
.end method

.method setPendingDexHelpMode(I)V
    .registers 2
    .param p1, "mode"    # I

    .line 6434
    iput p1, p0, Lcom/android/server/wm/Task;->mPendingDexHelpMode:I

    .line 6435
    return-void
.end method

.method setPendingDexNonResizeableAppRestartHelpMode(I)V
    .registers 2
    .param p1, "mode"    # I

    .line 6452
    iput p1, p0, Lcom/android/server/wm/Task;->mPendingDexNonResizeableAppRestartHelpMode:I

    .line 6453
    return-void
.end method

.method setPrevAffiliate(Lcom/android/server/wm/Task;)V
    .registers 3
    .param p1, "prevAffiliate"    # Lcom/android/server/wm/Task;

    .line 1377
    iput-object p1, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    .line 1378
    if-nez p1, :cond_6

    const/4 v0, -0x1

    goto :goto_8

    :cond_6
    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    :goto_8
    iput v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    .line 1379
    return-void
.end method

.method setResizeMode(I)V
    .registers 5
    .param p1, "resizeMode"    # I

    .line 882
    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    if-ne v0, p1, :cond_5

    .line 883
    return-void

    .line 885
    :cond_5
    iput p1, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 886
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 887
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    .line 888
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    .line 889
    return-void
.end method

.method setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 1571
    iget-object v0, p0, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, p1, :cond_5

    .line 1572
    return-void

    .line 1575
    :cond_5
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_3a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setResumedActivity stack:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " + from: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " reason:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    :cond_3a
    iput-object p1, p0, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1582
    if-eqz p1, :cond_5c

    iget-object v0, p0, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne p1, v0, :cond_5c

    .line 1583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPausingActivity set to null because it resumed. r="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1587
    :cond_5c
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->updateTopResumedActivityIfNeeded()V

    .line 1588
    return-void
.end method

.method setRootProcess(Lcom/android/server/wm/WindowProcessController;)V
    .registers 4
    .param p1, "proc"    # Lcom/android/server/wm/WindowProcessController;

    .line 3400
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->clearRootProcess()V

    .line 3401
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_28

    .line 3402
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-nez v0, :cond_28

    .line 3403
    iput-object p1, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    .line 3404
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowProcessController;->addRecentTask(Lcom/android/server/wm/Task;)V

    .line 3407
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DEDICATED_MEMORY:Z

    if-eqz v0, :cond_28

    .line 3408
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    iget-object v0, v0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    .line 3409
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/RecentTasks;->dedicateToIfNeeded(Lcom/android/server/wm/Task;)V

    .line 3413
    :cond_28
    return-void
.end method

.method setSnappingGuideBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 6422
    if-eqz p1, :cond_7

    .line 6423
    iget-object v0, p0, Lcom/android/server/wm/Task;->mSnappingGuideBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6425
    :cond_7
    return-void
.end method

.method setSurfaceControl(Landroid/view/SurfaceControl;)V
    .registers 2
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 5913
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setSurfaceControl(Landroid/view/SurfaceControl;)V

    .line 5916
    invoke-direct {p0}, Lcom/android/server/wm/Task;->sendTaskAppeared()V

    .line 5917
    return-void
.end method

.method setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .registers 2
    .param p1, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    .line 4482
    iput-object p1, p0, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 4483
    return-void
.end method

.method setTaskOrganizer(Landroid/window/ITaskOrganizer;)Z
    .registers 5
    .param p1, "organizer"    # Landroid/window/ITaskOrganizer;

    .line 5851
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_6

    .line 5852
    return v1

    .line 5855
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 5858
    .local v0, "previousOrganizer":Landroid/window/ITaskOrganizer;
    iput-object p1, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 5860
    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->sendTaskVanished(Landroid/window/ITaskOrganizer;)V

    .line 5862
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz v2, :cond_15

    .line 5863
    invoke-direct {p0}, Lcom/android/server/wm/Task;->sendTaskAppeared()V

    goto :goto_25

    .line 5866
    :cond_15
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mTaskAppearedSent:Z

    .line 5867
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/wm/Task;->mLastTaskOrganizerWindowingMode:I

    .line 5868
    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/Task;->setForceHidden(IZ)Z

    .line 5869
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v1, :cond_25

    .line 5870
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->removeImmediately()V

    .line 5874
    :cond_25
    :goto_25
    const/4 v1, 0x1

    return v1
.end method

.method setTaskToAffiliateWith(Lcom/android/server/wm/Task;)V
    .registers 6
    .param p1, "taskToAffiliateWith"    # Lcom/android/server/wm/Task;

    .line 1636
    invoke-direct {p0}, Lcom/android/server/wm/Task;->closeRecentsChain()V

    .line 1637
    iget v0, p1, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    iput v0, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    .line 1638
    iget v0, p1, Lcom/android/server/wm/Task;->mAffiliatedTaskColor:I

    iput v0, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskColor:I

    .line 1640
    :goto_b
    iget-object v0, p1, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    const/4 v1, 0x0

    if-eqz v0, :cond_50

    .line 1641
    iget-object v0, p1, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    .line 1642
    .local v0, "nextRecents":Lcom/android/server/wm/Task;
    iget v2, v0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    iget v3, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    if-eq v2, v3, :cond_4e

    .line 1643
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTaskToAffiliateWith: nextRecents="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " affilTaskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    iget-object v2, v0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-ne v2, p1, :cond_4a

    .line 1646
    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    .line 1648
    :cond_4a
    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    .line 1649
    goto :goto_50

    .line 1651
    :cond_4e
    move-object p1, v0

    .line 1652
    .end local v0    # "nextRecents":Lcom/android/server/wm/Task;
    goto :goto_b

    .line 1653
    :cond_50
    :goto_50
    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    .line 1654
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    .line 1655
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    .line 1656
    return-void
.end method

.method setUnminimizedWhenRemoved()V
    .registers 3

    .line 6635
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mIsMinimized:Z

    if-nez v0, :cond_5

    .line 6636
    return-void

    .line 6638
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mIsMinimized:Z

    .line 6644
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mIsMinimized:Z

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/FreeformController;->notifyFreeformMinimizeStateChanged(Lcom/android/server/wm/Task;Z)V

    .line 6651
    return-void
.end method

.method setUnminimizedWhenRestored(Z)V
    .registers 4
    .param p1, "animate"    # Z

    .line 6657
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mIsMinimized:Z

    if-nez v0, :cond_5

    .line 6658
    return-void

    .line 6660
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mIsMinimized:Z

    .line 6661
    if-eqz p1, :cond_d

    .line 6662
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/Task;->mMinimizeAnimState:I

    .line 6665
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mIsMinimized:Z

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/FreeformController;->notifyFreeformMinimizeStateChanged(Lcom/android/server/wm/Task;Z)V

    .line 6672
    return-void
.end method

.method shouldAnimate()Z
    .registers 4

    .line 4303
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 4304
    return v1

    .line 4309
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    .line 4310
    .local v0, "controller":Lcom/android/server/wm/RecentsAnimationController;
    if-eqz v0, :cond_1d

    invoke-virtual {v0, p0}, Lcom/android/server/wm/RecentsAnimationController;->isAnimatingTask(Lcom/android/server/wm/Task;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 4311
    invoke-virtual {v0}, Lcom/android/server/wm/RecentsAnimationController;->shouldDeferCancelUntilNextTransition()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 4312
    return v1

    .line 4314
    :cond_1d
    const/4 v1, 0x1

    return v1
.end method

.method shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;

    .line 4864
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method shouldDeferRemoval()Z
    .registers 4

    .line 3695
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 3697
    return v1

    .line 3699
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasWindowsAlive()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStack;->isAnimating(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    return v1
.end method

.method showForAllUsers()Z
    .registers 4

    .line 4136
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 4137
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 4138
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_15

    iget-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->mShowForAllUsers:Z

    if-eqz v2, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method showToCurrentUser()Z
    .registers 3

    .line 4143
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mForceShowForAllUsers:Z

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 4144
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfile(I)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    .line 4143
    :goto_1c
    return v0
.end method

.method startSplitChangeTransitionIfPossible()V
    .registers 3

    .line 6714
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-direct {p0}, Lcom/android/server/wm/Task;->isChangeTransitionBlockedByCommonPolicy()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_30

    .line 6717
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpPrevBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6719
    const/4 v0, 0x1

    .line 6720
    .local v0, "transitChangeMode":I
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mTaskSwitchingInSplitMode:Z

    if-nez v1, :cond_2a

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/wm/Task;->isClosingSplitApp(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 6721
    const/4 v0, 0x2

    .line 6723
    :cond_2a
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpPrevBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/Task;->initializeChangeTransition(Landroid/graphics/Rect;I)V

    .line 6724
    return-void

    .line 6715
    .end local v0    # "transitChangeMode":I
    :cond_30
    :goto_30
    return-void
.end method

.method supportsMinimizeState()Z
    .registers 2

    .line 6592
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6593
    const/4 v0, 0x0

    return v0

    .line 6599
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v0

    return v0
.end method

.method public supportsSplitScreenWindowingMode()Z
    .registers 3

    .line 2069
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2070
    .local v0, "topTask":Lcom/android/server/wm/Task;
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->supportsSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_14

    if-eqz v0, :cond_12

    .line 2071
    invoke-direct {v0}, Lcom/android/server/wm/Task;->supportsSplitScreenWindowingModeInner()Z

    move-result v1

    if-eqz v1, :cond_14

    :cond_12
    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    .line 2070
    :goto_15
    return v1
.end method

.method taskAppearedReady()Z
    .registers 4

    .line 5826
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 5827
    return v1

    .line 5830
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    .line 5831
    return v2

    .line 5834
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getHasBeenVisible()Z

    move-result v0

    if-eqz v0, :cond_17

    move v1, v2

    :cond_17
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 5335
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5336
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/wm/Task;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_3a

    .line 5337
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5338
    const-string v1, " U="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5339
    iget v1, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5340
    const-string v1, " StackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5341
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5342
    const-string v1, " sz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5343
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5344
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5345
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 5347
    :cond_3a
    const-string v1, "Task{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5348
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5349
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5350
    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " visible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " type="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v3

    invoke-static {v3}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v3

    invoke-static {v3}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " translucent="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5355
    iget-object v1, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    if-eqz v1, :cond_cc

    .line 5356
    const-string v1, " A="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5357
    iget-object v1, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10b

    .line 5358
    :cond_cc
    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_e9

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_e9

    .line 5359
    const-string v1, " I="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5360
    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10b

    .line 5361
    :cond_e9
    iget-object v1, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v1, :cond_106

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_106

    .line 5362
    const-string v1, " aI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5363
    iget-object v1, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10b

    .line 5365
    :cond_106
    const-string v1, " ??"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5367
    :goto_10b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/Task;->stringName:Ljava/lang/String;

    .line 5368
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method topActivityWithStartingWindow()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 1708
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_8

    .line 1709
    const/4 v0, 0x0

    return-object v0

    .line 1711
    :cond_8
    sget-object v0, Lcom/android/server/wm/-$$Lambda$Task$NjqppbKxK56id-VgjMiQP_fUgAA;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$NjqppbKxK56id-VgjMiQP_fUgAA;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 4366
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivity(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "taskId"    # I

    .line 4411
    sget-object v0, Lcom/android/server/wm/-$$Lambda$Task$wc9vA2EWxCoWO_MzNTKvEB8eLgw;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$wc9vA2EWxCoWO_MzNTKvEB8eLgw;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 4412
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4411
    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Lcom/android/internal/util/function/TriPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    .line 4413
    .local v0, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 4414
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 4415
    return-object v1
.end method

.method topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .registers 3
    .param p1, "focusableOnly"    # Z

    .line 4371
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4373
    const/4 v0, 0x0

    return-object v0

    .line 4382
    :cond_8
    if-eqz p1, :cond_11

    .line 4383
    sget-object v0, Lcom/android/server/wm/-$$Lambda$Task$HfaK7ApXdE1cmmFrjzHpq089zmg;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$HfaK7ApXdE1cmmFrjzHpq089zmg;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0

    .line 4385
    :cond_11
    sget-object v0, Lcom/android/server/wm/-$$Lambda$DaFwIyqZTBVKE2y-TN2iE7CD-r8;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DaFwIyqZTBVKE2y-TN2iE7CD-r8;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 1690
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_8

    .line 1691
    const/4 v0, 0x0

    return-object v0

    .line 1693
    :cond_8
    sget-object v0, Lcom/android/server/wm/-$$Lambda$DaFwIyqZTBVKE2y-TN2iE7CD-r8;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DaFwIyqZTBVKE2y-TN2iE7CD-r8;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .registers 4
    .param p1, "notTop"    # Lcom/android/server/wm/ActivityRecord;

    .line 4390
    sget-object v0, Lcom/android/server/wm/-$$Lambda$Task$vJaPYJ0TW6MLVfOETMoxr75oHkk;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$vJaPYJ0TW6MLVfOETMoxr75oHkk;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 4391
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 4390
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    .line 4392
    .local v0, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 4393
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 4394
    return-object v1
.end method

.method touchActiveTime()V
    .registers 3

    .line 1198
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/Task;->lastActiveTime:J

    .line 1199
    return-void
.end method

.method touchGainFocusTime()V
    .registers 3

    .line 1203
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/Task;->lastGainFocusTime:J

    .line 1204
    return-void
.end method

.method updateDexCompatModeLocked(Landroid/content/pm/ActivityInfo;Landroid/app/ActivityOptions;)V
    .registers 4
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .line 6296
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/Task;->updateDexCompatModeLocked(Landroid/content/pm/ActivityInfo;Landroid/app/ActivityOptions;Z)V

    .line 6297
    return-void
.end method

.method updateDexCompatModeLocked(Landroid/content/pm/ActivityInfo;Landroid/app/ActivityOptions;Z)V
    .registers 20
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "createTask"    # Z

    .line 6300
    move-object/from16 v8, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6301
    return-void

    .line 6303
    :cond_9
    if-nez p1, :cond_1e

    .line 6304
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 6305
    .local v0, "rootActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_18

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_18

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 6306
    .end local p1    # "info":Landroid/content/pm/ActivityInfo;
    .local v1, "info":Landroid/content/pm/ActivityInfo;
    :goto_19
    if-nez v1, :cond_1c

    .line 6307
    return-void

    .line 6306
    :cond_1c
    move-object v9, v1

    goto :goto_20

    .line 6303
    .end local v0    # "rootActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v1    # "info":Landroid/content/pm/ActivityInfo;
    .restart local p1    # "info":Landroid/content/pm/ActivityInfo;
    :cond_1e
    move-object/from16 v9, p1

    .line 6310
    .end local p1    # "info":Landroid/content/pm/ActivityInfo;
    .local v9, "info":Landroid/content/pm/ActivityInfo;
    :goto_20
    iget v0, v8, Lcom/android/server/wm/Task;->mDexLaunchPolicy:I

    if-nez v0, :cond_2b

    .line 6311
    iget-object v0, v8, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexCompatController:Lcom/android/server/wm/DexCompatController;

    invoke-virtual {v0, v8, v9}, Lcom/android/server/wm/DexCompatController;->updateDexCompatLaunchPolicy(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo;)V

    .line 6314
    :cond_2b
    iget v0, v8, Lcom/android/server/wm/Task;->mDexLaunchPolicy:I

    const/4 v10, 0x2

    and-int/2addr v0, v10

    const/4 v1, 0x0

    const/4 v11, 0x1

    if-eqz v0, :cond_35

    move v0, v11

    goto :goto_36

    :cond_35
    move v0, v1

    :goto_36
    move v12, v0

    .line 6315
    .local v12, "isDexCompatEnabled":Z
    iget-boolean v0, v8, Lcom/android/server/wm/Task;->mIsDexCompatEnabled:Z

    if-eq v0, v12, :cond_44

    .line 6316
    iput-boolean v12, v8, Lcom/android/server/wm/Task;->mIsDexCompatEnabled:Z

    .line 6317
    const/4 v0, 0x0

    .line 6319
    .local v0, "isDexCompatAllowedFullscreen":Z
    iget-boolean v2, v8, Lcom/android/server/wm/Task;->mIsDexCompatAllowedFullscreen:Z

    if-eq v2, v0, :cond_44

    .line 6320
    iput-boolean v0, v8, Lcom/android/server/wm/Task;->mIsDexCompatAllowedFullscreen:Z

    .line 6323
    .end local v0    # "isDexCompatAllowedFullscreen":Z
    :cond_44
    iget-boolean v0, v8, Lcom/android/server/wm/Task;->mIsDexCompatEnabled:Z

    if-eqz v0, :cond_d9

    .line 6324
    const/4 v13, 0x0

    .line 6325
    .local v13, "dexCompatUiMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getDexMetadataLaunchSize()Landroid/graphics/Point;

    move-result-object v14

    .line 6326
    .local v14, "dexMetaDataLaunchSize":Landroid/graphics/Point;
    if-eqz v14, :cond_65

    .line 6328
    iget v0, v14, Landroid/graphics/Point;->x:I

    .line 6329
    .local v0, "launchWidth":I
    iget v1, v14, Landroid/graphics/Point;->y:I

    .line 6330
    .local v1, "launchHeight":I
    if-nez v0, :cond_5a

    if-nez v1, :cond_5a

    .line 6331
    const/4 v2, 0x3

    move v13, v2

    .end local v13    # "dexCompatUiMode":I
    .local v2, "dexCompatUiMode":I
    goto :goto_63

    .line 6333
    .end local v2    # "dexCompatUiMode":I
    .restart local v13    # "dexCompatUiMode":I
    :cond_5a
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, v8, Lcom/android/server/wm/Task;->mDexCompatCustomSize:Landroid/graphics/Point;

    .line 6334
    const/4 v2, 0x2

    move v13, v2

    .line 6336
    .end local v0    # "launchWidth":I
    .end local v1    # "launchHeight":I
    :goto_63
    goto/16 :goto_d1

    :cond_65
    if-eqz p2, :cond_8c

    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_8c

    .line 6338
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 6339
    .local v0, "launchBounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 6340
    const/4 v1, 0x3

    move v13, v1

    .end local v13    # "dexCompatUiMode":I
    .local v1, "dexCompatUiMode":I
    goto :goto_d0

    .line 6342
    .end local v1    # "dexCompatUiMode":I
    .restart local v13    # "dexCompatUiMode":I
    :cond_7a
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 6343
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, v8, Lcom/android/server/wm/Task;->mDexCompatCustomSize:Landroid/graphics/Point;

    .line 6344
    const/4 v1, 0x2

    move v13, v1

    .end local v13    # "dexCompatUiMode":I
    .restart local v1    # "dexCompatUiMode":I
    goto :goto_d0

    .line 6346
    .end local v0    # "launchBounds":Landroid/graphics/Rect;
    .end local v1    # "dexCompatUiMode":I
    .restart local v13    # "dexCompatUiMode":I
    :cond_8c
    iget v0, v8, Lcom/android/server/wm/Task;->mDexCompatUiMode:I

    if-nez v0, :cond_d0

    .line 6347
    iget-boolean v0, v8, Lcom/android/server/wm/Task;->mIsDexCompatAllowedFullscreen:Z

    if-eqz v0, :cond_ce

    .line 6348
    if-eqz p2, :cond_9b

    .line 6349
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result v1

    goto :goto_9c

    :cond_9b
    nop

    :goto_9c
    move v15, v1

    .line 6350
    .local v15, "launchMode":I
    const/4 v0, 0x5

    if-ne v15, v0, :cond_a3

    .line 6351
    const/4 v0, 0x1

    move v13, v0

    .end local v13    # "dexCompatUiMode":I
    .local v0, "dexCompatUiMode":I
    goto :goto_cd

    .line 6352
    .end local v0    # "dexCompatUiMode":I
    .restart local v13    # "dexCompatUiMode":I
    :cond_a3
    if-ne v15, v11, :cond_a8

    .line 6353
    const/4 v0, 0x3

    move v13, v0

    .end local v13    # "dexCompatUiMode":I
    .restart local v0    # "dexCompatUiMode":I
    goto :goto_cd

    .line 6355
    .end local v0    # "dexCompatUiMode":I
    .restart local v13    # "dexCompatUiMode":I
    :cond_a8
    new-instance v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-direct {v0}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;-><init>()V

    move-object v7, v0

    .line 6357
    .local v7, "outParams":Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    iget-object v0, v8, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 p1, v7

    .end local v7    # "outParams":Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    .local p1, "outParams":Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/LaunchParamsController;->calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 6359
    move-object/from16 v0, p1

    .end local p1    # "outParams":Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    .local v0, "outParams":Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    iget v1, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mDexCompatUiMode:I

    if-ne v1, v11, :cond_cb

    .line 6360
    const/4 v1, 0x1

    move v13, v1

    .end local v13    # "dexCompatUiMode":I
    .restart local v1    # "dexCompatUiMode":I
    goto :goto_cd

    .line 6362
    .end local v1    # "dexCompatUiMode":I
    .restart local v13    # "dexCompatUiMode":I
    :cond_cb
    const/4 v1, 0x3

    move v13, v1

    .line 6365
    .end local v0    # "outParams":Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    .end local v15    # "launchMode":I
    :goto_cd
    goto :goto_d1

    .line 6366
    :cond_ce
    const/4 v13, 0x1

    goto :goto_d1

    .line 6346
    :cond_d0
    :goto_d0
    nop

    .line 6370
    :goto_d1
    iget v0, v8, Lcom/android/server/wm/Task;->mDexCompatUiMode:I

    if-eq v0, v13, :cond_d9

    if-eqz v13, :cond_d9

    .line 6371
    iput v13, v8, Lcom/android/server/wm/Task;->mDexCompatUiMode:I

    .line 6375
    .end local v13    # "dexCompatUiMode":I
    .end local v14    # "dexMetaDataLaunchSize":Landroid/graphics/Point;
    :cond_d9
    if-eqz p3, :cond_ff

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isDexCompatEnabled()Z

    move-result v0

    if-eqz v0, :cond_ff

    .line 6376
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 6377
    .local v0, "tmpConfig":Landroid/content/res/Configuration;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 6378
    iput v10, v0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    .line 6379
    iget v1, v8, Lcom/android/server/wm/Task;->mDexCompatUiMode:I

    iput v1, v0, Landroid/content/res/Configuration;->dexCompatUiMode:I

    .line 6380
    iget-boolean v1, v8, Lcom/android/server/wm/Task;->mIsDexCompatAllowedFullscreen:Z

    if-eqz v1, :cond_fa

    .line 6381
    iput v10, v0, Landroid/content/res/Configuration;->dexCompatAllowedFullscreen:I

    goto :goto_fc

    .line 6383
    :cond_fa
    iput v11, v0, Landroid/content/res/Configuration;->dexCompatAllowedFullscreen:I

    .line 6385
    :goto_fc
    invoke-virtual {v8, v0}, Lcom/android/server/wm/Task;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 6387
    .end local v0    # "tmpConfig":Landroid/content/res/Configuration;
    :cond_ff
    return-void
.end method

.method updateDexMetaData(Landroid/content/pm/ActivityInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .line 6145
    return-void
.end method

.method updateEffectiveIntent()V
    .registers 2

    .line 2215
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getRootActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2216
    .local v0, "root":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_d

    .line 2217
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 2219
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    .line 2221
    :cond_d
    return-void
.end method

.method updateMinMaxSizeIfNeeded()V
    .registers 10

    .line 6244
    iget-object v0, p0, Lcom/android/server/wm/Task;->mMinDimensions:Landroid/graphics/Point;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->equals(II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 6245
    .local v0, "hasMinDimension":Z
    iget-object v2, p0, Lcom/android/server/wm/Task;->mMaxDimensions:Landroid/graphics/Point;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/Point;->equals(II)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 6247
    .local v2, "hasMaxDimension":Z
    if-nez v0, :cond_1e

    if-nez v2, :cond_1e

    .line 6248
    iput v1, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    iput v1, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    .line 6249
    iput v1, p0, Lcom/android/server/wm/Task;->mMaxHeight:I

    iput v1, p0, Lcom/android/server/wm/Task;->mMaxWidth:I

    .line 6250
    return-void

    .line 6253
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 6254
    .local v3, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v3, :cond_30

    iget-boolean v4, v3, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v4, :cond_30

    .line 6255
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v4, v4

    goto :goto_39

    .line 6256
    :cond_30
    iget-object v4, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v4, v4

    :goto_39
    nop

    .line 6258
    .local v4, "currentDensityDpi":F
    iget v5, p0, Lcom/android/server/wm/Task;->mLastDensityDpi:F

    cmpl-float v5, v5, v4

    const-string v6, "ActivityTaskManager"

    if-eqz v5, :cond_c8

    .line 6259
    iput v4, p0, Lcom/android/server/wm/Task;->mLastDensityDpi:F

    .line 6263
    iget-object v5, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/android/server/wm/WindowManagerService;->getInitialDisplayDensity(I)I

    move-result v5

    int-to-float v5, v5

    .line 6265
    .local v5, "packageBaseDensityDpi":F
    const/4 v7, 0x0

    cmpg-float v7, v5, v7

    if-gtz v7, :cond_6e

    .line 6266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateMinMaxSizeIfNeeded: packageBaseDensity="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", Error"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6267
    return-void

    .line 6270
    :cond_6e
    div-float v6, v4, v5

    .line 6271
    .local v6, "densityRatio":F
    const/high16 v7, 0x3f000000    # 0.5f

    if-eqz v0, :cond_99

    .line 6272
    iget-object v8, p0, Lcom/android/server/wm/Task;->mMinDimensions:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    if-gez v8, :cond_7c

    .line 6273
    move v8, v1

    goto :goto_84

    :cond_7c
    iget-object v8, p0, Lcom/android/server/wm/Task;->mMinDimensions:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    mul-float/2addr v8, v6

    add-float/2addr v8, v7

    float-to-int v8, v8

    :goto_84
    iput v8, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    .line 6274
    iget-object v8, p0, Lcom/android/server/wm/Task;->mMinDimensions:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    if-gez v8, :cond_8e

    .line 6275
    move v8, v1

    goto :goto_96

    :cond_8e
    iget-object v8, p0, Lcom/android/server/wm/Task;->mMinDimensions:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    mul-float/2addr v8, v6

    add-float/2addr v8, v7

    float-to-int v8, v8

    :goto_96
    iput v8, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    goto :goto_9d

    .line 6277
    :cond_99
    iput v1, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    iput v1, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    .line 6279
    :goto_9d
    if-eqz v2, :cond_c3

    .line 6280
    iget-object v8, p0, Lcom/android/server/wm/Task;->mMaxDimensions:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    if-gez v8, :cond_a7

    .line 6281
    move v8, v1

    goto :goto_af

    :cond_a7
    iget-object v8, p0, Lcom/android/server/wm/Task;->mMaxDimensions:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    mul-float/2addr v8, v6

    add-float/2addr v8, v7

    float-to-int v8, v8

    :goto_af
    iput v8, p0, Lcom/android/server/wm/Task;->mMaxWidth:I

    .line 6282
    iget-object v8, p0, Lcom/android/server/wm/Task;->mMaxDimensions:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    if-gez v8, :cond_b8

    .line 6283
    goto :goto_c0

    :cond_b8
    iget-object v1, p0, Lcom/android/server/wm/Task;->mMaxDimensions:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    mul-float/2addr v1, v6

    add-float/2addr v1, v7

    float-to-int v1, v1

    :goto_c0
    iput v1, p0, Lcom/android/server/wm/Task;->mMaxHeight:I

    goto :goto_c7

    .line 6285
    :cond_c3
    iput v1, p0, Lcom/android/server/wm/Task;->mMaxHeight:I

    iput v1, p0, Lcom/android/server/wm/Task;->mMaxWidth:I

    .line 6287
    .end local v5    # "packageBaseDensityDpi":F
    .end local v6    # "densityRatio":F
    :goto_c7
    goto :goto_df

    .line 6288
    :cond_c8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateMinMaxSizeIfNeeded: new density equals last density. mLastDensityDpi: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/Task;->mLastDensityDpi:F

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6291
    :goto_df
    return-void
.end method

.method updateOverrideConfigurationForStack(Lcom/android/server/wm/ActivityStack;)V
    .registers 6
    .param p1, "inStack"    # Lcom/android/server/wm/ActivityStack;

    .line 3344
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 3346
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_9

    if-ne v0, p1, :cond_9

    .line 3347
    return-void

    .line 3350
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 3351
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 3355
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->matchParentBounds()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 3356
    return-void

    .line 3358
    :cond_1c
    iget-object v1, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_24

    .line 3359
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    goto :goto_55

    .line 3361
    :cond_24
    iget-object v1, p0, Lcom/android/server/wm/Task;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/server/wm/LaunchParamsController;->layoutTask(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;)Z

    goto :goto_55

    .line 3352
    :cond_2f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not position non-resizeable task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " in stack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3364
    :cond_4e
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 3366
    :goto_55
    return-void
.end method

.method updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;
    .registers 4

    .line 3330
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3331
    .local v0, "rootTask":Lcom/android/server/wm/Task;
    if-eq v0, p0, :cond_e

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 3332
    .local v1, "bounds":Landroid/graphics/Rect;
    :goto_12
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 3333
    if-eqz v1, :cond_24

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_24

    .line 3336
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3338
    :cond_24
    return-object v1
.end method

.method updateResizeModeFromBlockListLocked()V
    .registers 2

    .line 6477
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->updateResizeModeFromBlockListLocked(Z)V

    .line 6478
    return-void
.end method

.method updateResizeModeFromBlockListLocked(Z)V
    .registers 5
    .param p1, "forceUpdate"    # Z

    .line 6481
    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-nez v0, :cond_5

    .line 6482
    return-void

    .line 6488
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiSplitBlockListController:Lcom/android/server/wm/MultiSplitBlockListController;

    iget-object v1, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 6490
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 6489
    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiSplitBlockListController;->isMultiSplitBlocklistPackageLocked(Ljava/lang/String;)Z

    move-result v0

    .line 6492
    .local v0, "isBlocklistPackage":Z
    iget v1, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-direct {p0, v1}, Lcom/android/server/wm/Task;->isBlocklistResizeMode(I)Z

    move-result v1

    if-eq v1, v0, :cond_1d

    const/4 v1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    .line 6493
    .local v1, "resizeModeChanged":Z
    :goto_1e
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    if-eqz v2, :cond_26

    if-eqz p1, :cond_37

    :cond_26
    if-eqz v1, :cond_37

    .line 6494
    iget v2, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-direct {p0, v2}, Lcom/android/server/wm/Task;->isBlocklistResizeMode(I)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 6495
    invoke-direct {p0}, Lcom/android/server/wm/Task;->restoreResizeMode()V

    goto :goto_37

    .line 6497
    :cond_34
    invoke-direct {p0}, Lcom/android/server/wm/Task;->setResizeModeFromBlocklist()V

    .line 6500
    :cond_37
    :goto_37
    return-void
.end method

.method updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V
    .registers 7
    .param p1, "transaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 2657
    iget-object v0, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_4e

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_4e

    .line 2662
    :cond_b
    const/4 v0, 0x0

    .line 2663
    .local v0, "width":I
    const/4 v1, 0x0

    .line 2664
    .local v1, "height":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 2665
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 2666
    .local v2, "taskBounds":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 2667
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 2669
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskOutset()I

    move-result v3

    .line 2670
    .local v3, "outset":I
    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v0, v4

    .line 2671
    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v1, v4

    .line 2673
    .end local v2    # "taskBounds":Landroid/graphics/Rect;
    .end local v3    # "outset":I
    :cond_29
    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-ne v0, v2, :cond_36

    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-ne v1, v2, :cond_36

    .line 2674
    return-void

    .line 2677
    :cond_36
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 2680
    iget-object v2, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    goto :goto_48

    .line 2683
    :cond_43
    iget-object v2, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 2685
    :goto_48
    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 2686
    return-void

    .line 2658
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_4e
    :goto_4e
    return-void
.end method

.method updateTaskDescription()V
    .registers 7

    .line 2143
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getRootActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2144
    .local v0, "root":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_8

    return-void

    .line 2146
    :cond_8
    new-instance v1, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v1}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    .line 2147
    .local v1, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    sget-object v2, Lcom/android/server/wm/-$$Lambda$Task$TUGPkEKamN60PF6hJQxUwDBjU-M;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$TUGPkEKamN60PF6hJQxUwDBjU-M;

    const-class v3, Lcom/android/server/wm/ActivityRecord;

    .line 2149
    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    .line 2147
    invoke-static {v2, v3, v0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainFunction(Lcom/android/internal/util/function/TriFunction;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledFunction;

    move-result-object v2

    .line 2150
    .local v2, "f":Lcom/android/internal/util/function/pooled/PooledFunction;
    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Function;)Z

    .line 2151
    invoke-interface {v2}, Lcom/android/internal/util/function/pooled/PooledFunction;->recycle()V

    .line 2152
    iget v3, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager$TaskDescription;->setResizeMode(I)V

    .line 2153
    iget v3, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager$TaskDescription;->setMinWidth(I)V

    .line 2154
    iget v3, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager$TaskDescription;->setMinHeight(I)V

    .line 2155
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 2157
    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    iget v4, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    if-ne v3, v4, :cond_3d

    .line 2158
    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskColor:I

    .line 2160
    :cond_3d
    iget-object v3, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v3

    .line 2161
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    .line 2160
    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskDescriptionChanged(Landroid/app/TaskInfo;)V

    .line 2163
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    .line 2164
    .local v3, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v3, :cond_59

    .line 2165
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 2166
    .local v4, "t":Lcom/android/server/wm/Task;
    if-eqz v4, :cond_59

    .line 2167
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    .line 2171
    .end local v4    # "t":Lcom/android/server/wm/Task;
    :cond_59
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v4

    if-eqz v4, :cond_67

    .line 2172
    iget-object v4, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    const/4 v5, 0x0

    invoke-virtual {v4, p0, v5}, Lcom/android/server/wm/TaskOrganizerController;->dispatchTaskInfoChanged(Lcom/android/server/wm/Task;Z)V

    .line 2174
    :cond_67
    return-void
.end method

.method updateTaskMovement(Z)V
    .registers 6
    .param p1, "toFront"    # Z

    .line 1591
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    if-eqz v0, :cond_11

    .line 1592
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/Task;->mLastTimeMoved:J

    .line 1596
    if-nez p1, :cond_11

    .line 1597
    const-wide/16 v2, -0x1

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/Task;->mLastTimeMoved:J

    .line 1600
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->invalidateTaskLayers()V

    .line 1601
    return-void
.end method

.method updateTaskOrganizerState(Z)Z
    .registers 5
    .param p1, "forceUpdate"    # Z

    .line 5887
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 5888
    return v1

    .line 5891
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    .line 5892
    .local v0, "windowingMode":I
    if-nez p1, :cond_13

    iget v2, p0, Lcom/android/server/wm/Task;->mLastTaskOrganizerWindowingMode:I

    if-ne v0, v2, :cond_13

    .line 5897
    return v1

    .line 5904
    :cond_13
    iget-object v1, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 5905
    invoke-virtual {v1, v0}, Lcom/android/server/wm/TaskOrganizerController;->getTaskOrganizer(I)Landroid/window/ITaskOrganizer;

    move-result-object v1

    .line 5906
    .local v1, "org":Landroid/window/ITaskOrganizer;
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setTaskOrganizer(Landroid/window/ITaskOrganizer;)Z

    move-result v2

    .line 5907
    .local v2, "result":Z
    iput v0, p0, Lcom/android/server/wm/Task;->mLastTaskOrganizerWindowingMode:I

    .line 5908
    return v2
.end method

.method writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 2741
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2742
    .local v0, "token":J
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2743
    iget v2, p0, Lcom/android/server/wm/Task;->mUserId:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2744
    iget-object v2, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_2f

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 2745
    iget-object v2, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    goto :goto_31

    :cond_2f
    const-string v2, "Task"

    .line 2744
    :goto_31
    const-wide v3, 0x10900000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2746
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2747
    return-void
.end method
